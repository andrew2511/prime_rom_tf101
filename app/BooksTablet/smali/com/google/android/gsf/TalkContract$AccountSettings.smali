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

.field public static final LAST_RMQ_RECEIVED:Ljava/lang/String; = "last_rmq_rec"

.field public static final NOTIFICATION_OFF:Ljava/lang/String; = "off"

.field public static final NOTIFICATION_POPUP:Ljava/lang/String; = "popup"

.field public static final NOTIFICATION_STATUS_BAR:Ljava/lang/String; = "statusbar"

.field public static final SETTING_ALLOW_AUDIOCHAT:Ljava/lang/String; = "audiochat"

.field public static final SETTING_ALLOW_VIDEOCHAT:Ljava/lang/String; = "videochat"

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
    .line 1260
    const-string v0, "content://com.google.android.providers.talk/accountSettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1255
    return-void
.end method

.method public static final getContentUriByAccountId(J)Landroid/net/Uri;
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1361
    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1362
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1363
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "value"
    .parameter "accountId"

    .prologue
    .line 1393
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1395
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    const-string v1, "value"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    const-string v1, "account_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1399
    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1400
    return-void
.end method

.method public static putLongValue(Landroid/content/ContentResolver;Ljava/lang/String;JJ)V
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "value"
    .parameter "accountId"

    .prologue
    .line 1375
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1377
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const-string v1, "value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1379
    const-string v1, "account_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1381
    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1382
    return-void
.end method

.method public static putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "value"
    .parameter "accountId"

    .prologue
    .line 1411
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1413
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v1, "account_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1417
    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1418
    return-void
.end method

.method public static setAudioChatEnabled(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "enabled"
    .parameter "accountId"

    .prologue
    .line 1556
    const-string v0, "audiochat"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1557
    return-void
.end method

.method public static setAutomaticallyConnectGTalk(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "autoConnect"
    .parameter "accountId"

    .prologue
    .line 1430
    const-string v0, "gtalk_auto_connect"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1432
    return-void
.end method

.method public static setHeartbeatInterval(Landroid/content/ContentResolver;JJ)V
    .locals 6
    .parameter "contentResolver"
    .parameter "interval"
    .parameter "accountId"

    .prologue
    .line 1606
    const-string v1, "heartbeat_interval"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putLongValue(Landroid/content/ContentResolver;Ljava/lang/String;JJ)V

    .line 1607
    return-void
.end method

.method public static setHideOfflineContacts(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "hideOfflineContacts"
    .parameter "accountId"

    .prologue
    .line 1442
    const-string v0, "hide_offline_contacts"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1444
    return-void
.end method

.method public static setJidResource(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "jidResource"
    .parameter "accountId"

    .prologue
    .line 1614
    const-string v0, "jid_resource"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1615
    return-void
.end method

.method public static setNotificationType(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "notificationType"
    .parameter "accountId"

    .prologue
    .line 1498
    const-string v0, "text-notif-type"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1500
    return-void
.end method

.method public static setNotifyFriendInvitation(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "notify"
    .parameter "accountId"

    .prologue
    .line 1583
    const-string v0, "notify_invite"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1584
    return-void
.end method

.method public static setShowAwayOnIdle(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "showAway"
    .parameter "accountId"

    .prologue
    .line 1578
    const-string v0, "show_away_on_idle"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1579
    return-void
.end method

.method public static setShowMobileIndicator(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "showMobileIndicator"
    .parameter "accountId"

    .prologue
    .line 1544
    const-string v0, "mobile_indicator"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1546
    return-void
.end method

.method public static setTextRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "ringtoneUri"
    .parameter "accountId"

    .prologue
    .line 1522
    const-string v0, "ringtone"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1523
    return-void
.end method

.method public static setTextVibrate(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "vibrate"
    .parameter "accountId"

    .prologue
    .line 1454
    const-string v0, "vibrate"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1455
    return-void
.end method

.method public static setTextVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "when"
    .parameter "accountId"

    .prologue
    .line 1465
    const-string v0, "vibrate-when"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1466
    return-void
.end method

.method public static setUploadHeartbeatStat(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "uploadStat"
    .parameter "accountId"

    .prologue
    .line 1594
    const-string v0, "upload_heartbeat_stat"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1596
    return-void
.end method

.method public static setVideoChatEnabled(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "enabled"
    .parameter "accountId"

    .prologue
    .line 1567
    const-string v0, "videochat"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1568
    return-void
.end method

.method public static setVideoNotificationType(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "notificationType"
    .parameter "accountId"

    .prologue
    .line 1510
    const-string v0, "video-notif-type"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1512
    return-void
.end method

.method public static setVideoRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "ringtoneUri"
    .parameter "accountId"

    .prologue
    .line 1533
    const-string v0, "ringtone-video"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1534
    return-void
.end method

.method public static setVideoVibrate(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "vibrate"
    .parameter "accountId"

    .prologue
    .line 1476
    const-string v0, "vibrate-video"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1477
    return-void
.end method

.method public static setVideoVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "when"
    .parameter "accountId"

    .prologue
    .line 1487
    const-string v0, "vibrate-when-video"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1488
    return-void
.end method
