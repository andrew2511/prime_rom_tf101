.class public Lcom/google/android/gsf/TalkContract$AccountSettings;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Lcom/google/android/gsf/TalkContract$AccountSettingsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android-dir/gtalk-accountSettings"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DISABLED:I = 0x2

.field private static final ENABLED:I = 0x1

.field private static final ENABLED_MASK:I = 0x3

.field public static final LAST_RMQ_RECEIVED:Ljava/lang/String; = "last_rmq_rec"

.field public static final NOTIFICATION_OFF:Ljava/lang/String; = "off"

.field public static final NOTIFICATION_POPUP:Ljava/lang/String; = "popup"

.field public static final NOTIFICATION_STATUS_BAR:Ljava/lang/String; = "statusbar"

.field public static final SETTING_ALLOW_AUDIOCHAT:Ljava/lang/String; = "audiochat"

.field public static final SETTING_ALLOW_AUDIOCHAT_V2:Ljava/lang/String; = "audiochatv2"

.field public static final SETTING_ALLOW_CAMERA:Ljava/lang/String; = "show_camera"

.field public static final SETTING_ALLOW_VIDEOCHAT:Ljava/lang/String; = "videochat"

.field public static final SETTING_ALLOW_VIDEOCHAT_V2:Ljava/lang/String; = "videochatv2"

.field public static final SETTING_AUTOMATICALLY_CONNECT_GTALK:Ljava/lang/String; = "gtalk_auto_connect"

.field public static final SETTING_AUTOMATICALLY_START_SERVICE:Ljava/lang/String; = "auto_start_service"

.field public static final SETTING_HEARTBEAT_INTERVAL:Ljava/lang/String; = "heartbeat_interval"

.field public static final SETTING_HIDE_OFFLINE_CONTACTS:Ljava/lang/String; = "hide_offline_contacts"

.field public static final SETTING_IM_NOTIFICATION_TYPE:Ljava/lang/String; = "text-notif-type"

.field public static final SETTING_JID_RESOURCE:Ljava/lang/String; = "jid_resource"

.field public static final SETTING_NOTIFY_FRIEND_INVITE:Ljava/lang/String; = "notify_invite"

.field public static final SETTING_SHOW_AWAY_ON_IDLE:Ljava/lang/String; = "show_away_on_idle"

.field public static final SETTING_SHOW_MOBILE_INDICATOR:Ljava/lang/String; = "mobile_indicator"

.field public static final SETTING_TEXT_RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final SETTING_TEXT_RINGTONE_DEFAULT:Ljava/lang/String; = "content://settings/system/notification_sound"

.field public static final SETTING_TEXT_VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final SETTING_TEXT_VIBRATE_WHEN:Ljava/lang/String; = "vibrate-when"

.field public static final SETTING_UPLOAD_HEARTBEAT_STAT:Ljava/lang/String; = "upload_heartbeat_stat"

.field public static final SETTING_VIDEO_NOTIFICATION_TYPE:Ljava/lang/String; = "video-notif-type"

.field public static final SETTING_VIDEO_RINGTONE:Ljava/lang/String; = "ringtone-video"

.field public static final SETTING_VIDEO_RINGTONE_DEFAULT:Ljava/lang/String; = "content://settings/system/ringtone"

.field public static final SETTING_VIDEO_VIBRATE:Ljava/lang/String; = "vibrate-video"

.field public static final SETTING_VIDEO_VIBRATE_WHEN:Ljava/lang/String; = "vibrate-when-video"

.field public static final SHOW_OFFLINE_CONTACTS:Ljava/lang/String; = "show_offline_contacts"

.field private static final UNSET:I = 0x0

.field private static final USER_SET:I = 0x10

.field private static final USER_SET_MASK:I = 0x10

.field public static final VIBRATE_ALWAYS:Ljava/lang/String; = "always"

.field public static final VIBRATE_NEVER:Ljava/lang/String; = "never"

.field public static final VIBRATE_SILENT:Ljava/lang/String; = "silent"

.field public static final VIDEOCHAT_BLOCK:Ljava/lang/String; = "off"

.field public static final VIDEOCHAT_VIDEO:Ljava/lang/String; = "video"

.field public static final VIDEOCHAT_VOICE:Ljava/lang/String; = "audio"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1299
    const-string v0, "content://com.google.android.providers.talk/accountSettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    return-void
.end method

.method static synthetic access$000(J)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1292
    invoke-static {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static final getContentUriByAccountId(J)Landroid/net/Uri;
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1411
    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1412
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1413
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static getUserSettingValue(ZZ)I
    .locals 2
    .parameter "enabled"
    .parameter "userSet"

    .prologue
    .line 1677
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_1

    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isEnabled(J)Z
    .locals 4
    .parameter "value"

    .prologue
    .line 1669
    const-wide/16 v0, 0x3

    and-long/2addr v0, p0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUserSet(J)Z
    .locals 4
    .parameter "value"

    .prologue
    const-wide/16 v2, 0x10

    .line 1673
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "value"
    .parameter "accountId"

    .prologue
    .line 1443
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1445
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    const-string v1, "value"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const-string v1, "account_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1449
    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1450
    return-void
.end method

.method public static putLongValue(Landroid/content/ContentResolver;Ljava/lang/String;JJ)V
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "value"
    .parameter "accountId"

    .prologue
    .line 1425
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1427
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    const-string v1, "value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1429
    const-string v1, "account_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1431
    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1432
    return-void
.end method

.method public static putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "value"
    .parameter "accountId"

    .prologue
    .line 1461
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1463
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    const-string v1, "account_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1467
    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1468
    return-void
.end method

.method public static setAudioChatEnabled(Landroid/content/ContentResolver;ZZJJ)Z
    .locals 6
    .parameter "contentResolver"
    .parameter "enabled"
    .parameter "userSet"
    .parameter "currentValue"
    .parameter "accountId"

    .prologue
    .line 1611
    if-nez p2, :cond_0

    invoke-static {p3, p4}, Lcom/google/android/gsf/TalkContract$AccountSettings;->isUserSet(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1612
    :cond_0
    const-string v1, "audiochatv2"

    invoke-static {p1, p2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->getUserSettingValue(ZZ)I

    move-result v0

    int-to-long v2, v0

    move-object v0, p0

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putLongValue(Landroid/content/ContentResolver;Ljava/lang/String;JJ)V

    .line 1614
    const/4 v0, 0x1

    .line 1616
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAutomaticallyConnectGTalk(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "autoConnect"
    .parameter "accountId"

    .prologue
    .line 1480
    const-string v0, "gtalk_auto_connect"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1482
    return-void
.end method

.method public static setCameraEnabled(Landroid/content/ContentResolver;ZZJJ)Z
    .locals 6
    .parameter "contentResolver"
    .parameter "enabled"
    .parameter "userSet"
    .parameter "currentValue"
    .parameter "accountId"

    .prologue
    .line 1653
    if-nez p2, :cond_0

    invoke-static {p3, p4}, Lcom/google/android/gsf/TalkContract$AccountSettings;->isUserSet(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1654
    :cond_0
    const-string v1, "show_camera"

    invoke-static {p1, p2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->getUserSettingValue(ZZ)I

    move-result v0

    int-to-long v2, v0

    move-object v0, p0

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putLongValue(Landroid/content/ContentResolver;Ljava/lang/String;JJ)V

    .line 1656
    const/4 v0, 0x1

    .line 1658
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setHeartbeatInterval(Landroid/content/ContentResolver;JJ)V
    .locals 6
    .parameter "contentResolver"
    .parameter "interval"
    .parameter "accountId"

    .prologue
    .line 1716
    const-string v1, "heartbeat_interval"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putLongValue(Landroid/content/ContentResolver;Ljava/lang/String;JJ)V

    .line 1717
    return-void
.end method

.method public static setHideOfflineContacts(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "hideOfflineContacts"
    .parameter "accountId"

    .prologue
    .line 1492
    const-string v0, "hide_offline_contacts"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1494
    return-void
.end method

.method public static setJidResource(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "jidResource"
    .parameter "accountId"

    .prologue
    .line 1724
    const-string v0, "jid_resource"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1725
    return-void
.end method

.method public static setNotificationType(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "notificationType"
    .parameter "accountId"

    .prologue
    .line 1548
    const-string v0, "text-notif-type"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1550
    return-void
.end method

.method public static setNotifyFriendInvitation(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "notify"
    .parameter "accountId"

    .prologue
    .line 1693
    const-string v0, "notify_invite"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1694
    return-void
.end method

.method public static setShowAwayOnIdle(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "showAway"
    .parameter "accountId"

    .prologue
    .line 1688
    const-string v0, "show_away_on_idle"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1689
    return-void
.end method

.method public static setShowMobileIndicator(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "showMobileIndicator"
    .parameter "accountId"

    .prologue
    .line 1594
    const-string v0, "mobile_indicator"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1596
    return-void
.end method

.method public static setTextRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "ringtoneUri"
    .parameter "accountId"

    .prologue
    .line 1572
    const-string v0, "ringtone"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1573
    return-void
.end method

.method public static setTextVibrate(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "vibrate"
    .parameter "accountId"

    .prologue
    .line 1504
    const-string v0, "vibrate"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1505
    return-void
.end method

.method public static setTextVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "when"
    .parameter "accountId"

    .prologue
    .line 1515
    const-string v0, "vibrate-when"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1516
    return-void
.end method

.method public static setUploadHeartbeatStat(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "uploadStat"
    .parameter "accountId"

    .prologue
    .line 1704
    const-string v0, "upload_heartbeat_stat"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1706
    return-void
.end method

.method public static setVideoChatEnabled(Landroid/content/ContentResolver;ZZJJ)Z
    .locals 6
    .parameter "contentResolver"
    .parameter "enabled"
    .parameter "userSet"
    .parameter "currentValue"
    .parameter "accountId"

    .prologue
    .line 1632
    if-nez p2, :cond_0

    invoke-static {p3, p4}, Lcom/google/android/gsf/TalkContract$AccountSettings;->isUserSet(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1633
    :cond_0
    const-string v1, "videochatv2"

    invoke-static {p1, p2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->getUserSettingValue(ZZ)I

    move-result v0

    int-to-long v2, v0

    move-object v0, p0

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putLongValue(Landroid/content/ContentResolver;Ljava/lang/String;JJ)V

    .line 1635
    const/4 v0, 0x1

    .line 1637
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setVideoNotificationType(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "notificationType"
    .parameter "accountId"

    .prologue
    .line 1560
    const-string v0, "video-notif-type"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1562
    return-void
.end method

.method public static setVideoRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "ringtoneUri"
    .parameter "accountId"

    .prologue
    .line 1583
    const-string v0, "ringtone-video"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1584
    return-void
.end method

.method public static setVideoVibrate(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "vibrate"
    .parameter "accountId"

    .prologue
    .line 1526
    const-string v0, "vibrate-video"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1527
    return-void
.end method

.method public static setVideoVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "when"
    .parameter "accountId"

    .prologue
    .line 1537
    const-string v0, "vibrate-when-video"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1538
    return-void
.end method
