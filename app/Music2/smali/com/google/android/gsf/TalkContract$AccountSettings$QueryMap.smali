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

    .line 1630
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

    .line 1636
    iput-object p1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    .line 1637
    iput-wide p3, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    .line 1638
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "name"
    .parameter "def"

    .prologue
    .line 2049
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2050
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

    .line 1946
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
    .line 2075
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2076
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
    .line 2088
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2089
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
    .line 2062
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2063
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
    .line 1861
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1869
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 1871
    const/4 v1, 0x1

    .line 1873
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAudioChatEnabled()Z
    .locals 2

    .prologue
    .line 1892
    const-string v0, "audiochat"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAutomaticallyConnectToGTalkServer()Z
    .locals 2

    .prologue
    .line 1655
    const-string v0, "gtalk_auto_connect"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCapabilities()I
    .locals 2

    .prologue
    .line 1921
    const/16 v0, 0x8

    .line 1923
    .local v0, caps:I
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getAudioChatEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1924
    or-int/lit8 v0, v0, 0x1

    .line 1927
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoChatEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1928
    or-int/lit8 v0, v0, 0x2

    .line 1933
    or-int/lit8 v0, v0, 0x4

    .line 1937
    :cond_1
    return v0
.end method

.method public getHeartbeatInterval()J
    .locals 3

    .prologue
    .line 2020
    const-string v0, "heartbeat_interval"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHideOfflineContacts()Z
    .locals 2

    .prologue
    .line 1675
    const-string v0, "hide_offline_contacts"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getJidResource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2037
    const-string v0, "jid_resource"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyFriendInvitation()Z
    .locals 2

    .prologue
    .line 1983
    const-string v0, "notify_invite"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowAwayOnIdle()Z
    .locals 2

    .prologue
    .line 1964
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
    .line 1853
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
    .line 1779
    const-string v0, "text-notif-type"

    const-string v1, "statusbar"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextRingtoneURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1816
    const-string v0, "ringtone"

    const-string v1, "content://settings/system/notification_sound"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextVibrate()Z
    .locals 2

    .prologue
    .line 1694
    const-string v0, "vibrate"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTextVibrateWhen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1713
    const-string v1, "vibrate-when"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1714
    .local v0, when:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1717
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
    .line 2001
    const-string v0, "upload_heartbeat_stat"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVideoChatEnabled()Z
    .locals 2

    .prologue
    .line 1912
    const-string v0, "videochat"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVideoNotification()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1798
    const-string v0, "video-notif-type"

    const-string v1, "popup"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRingtoneURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1834
    const-string v0, "ringtone-video"

    const-string v1, "content://settings/system/ringtone"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoVibrate()Z
    .locals 2

    .prologue
    .line 1736
    const-string v0, "vibrate-video"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVideoVibrateWhen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1755
    const-string v1, "vibrate-when-video"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1756
    .local v0, when:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1759
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
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setAudioChatEnabled(Landroid/content/ContentResolver;ZJ)V

    .line 1883
    return-void
.end method

.method public setAutomaticallyConnectToGTalkServer(Z)V
    .locals 3
    .parameter "autoConnect"

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setAutomaticallyConnectGTalk(Landroid/content/ContentResolver;ZJ)V

    .line 1648
    return-void
.end method

.method public setHeartbeatInterval(J)V
    .locals 3
    .parameter "interval"

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setHeartbeatInterval(Landroid/content/ContentResolver;JJ)V

    .line 2012
    return-void
.end method

.method public setHideOfflineContacts(Z)V
    .locals 3
    .parameter "hideOfflineContacts"

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setHideOfflineContacts(Landroid/content/ContentResolver;ZJ)V

    .line 1667
    return-void
.end method

.method public setJidResource(Ljava/lang/String;)V
    .locals 3
    .parameter "jidResource"

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setJidResource(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 2030
    return-void
.end method

.method public setNotifyFriendInvitation(Z)V
    .locals 3
    .parameter "notify"

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setNotifyFriendInvitation(Landroid/content/ContentResolver;ZJ)V

    .line 1975
    return-void
.end method

.method public setShowAwayOnIdle(Z)V
    .locals 3
    .parameter "showAway"

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setShowAwayOnIdle(Landroid/content/ContentResolver;ZJ)V

    .line 1956
    return-void
.end method

.method public setShowMobileIndicator(Z)V
    .locals 3
    .parameter "showMobile"

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setShowMobileIndicator(Landroid/content/ContentResolver;ZJ)V

    .line 1844
    return-void
.end method

.method public setTextNotification(Ljava/lang/String;)V
    .locals 3
    .parameter "notificationType"

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setNotificationType(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1771
    return-void
.end method

.method public setTextRingtoneURI(Ljava/lang/String;)V
    .locals 3
    .parameter "ringtoneUri"

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setTextRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1808
    return-void
.end method

.method public setTextVibrate(Z)V
    .locals 3
    .parameter "vibrate"

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setTextVibrate(Landroid/content/ContentResolver;ZJ)V

    .line 1686
    return-void
.end method

.method public setTextVibrateWhen(Ljava/lang/String;)V
    .locals 3
    .parameter "when"

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setTextVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1704
    return-void
.end method

.method public setUploadHeartbeatStat(Z)V
    .locals 3
    .parameter "uploadStat"

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setUploadHeartbeatStat(Landroid/content/ContentResolver;ZJ)V

    .line 1993
    return-void
.end method

.method public setVideoChatEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoChatEnabled(Landroid/content/ContentResolver;ZJ)V

    .line 1903
    return-void
.end method

.method public setVideoNotification(Ljava/lang/String;)V
    .locals 3
    .parameter "notificationType"

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoNotificationType(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1790
    return-void
.end method

.method public setVideoRingtoneURI(Ljava/lang/String;)V
    .locals 3
    .parameter "ringtoneUri"

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1826
    return-void
.end method

.method public setVideoVibrate(Z)V
    .locals 3
    .parameter "vibrate"

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoVibrate(Landroid/content/ContentResolver;ZJ)V

    .line 1728
    return-void
.end method

.method public setVideoVibrateWhen(Ljava/lang/String;)V
    .locals 3
    .parameter "when"

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1746
    return-void
.end method
