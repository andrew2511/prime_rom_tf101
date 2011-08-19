.class public Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;
.super Landroid/content/ContentQueryMap;
.source "TalkContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract$ProviderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryMap"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;ZLandroid/os/Handler;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1677
    sget-object v1, Lcom/google/android/gsf/TalkContract$ProviderSettings;->CONTENT_URI:Landroid/net/Uri;

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

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 1683
    iput-object p1, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    .line 1684
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1905
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1906
    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method private getInteger(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1931
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1932
    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1944
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1945
    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p2

    goto :goto_0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1918
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1919
    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method


# virtual methods
.method public getAutomaticallyConnectToGTalkServer()Z
    .locals 2

    .prologue
    .line 1701
    const-string v0, "gtalk_auto_connect"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableNotification()Z
    .locals 2

    .prologue
    .line 1740
    const-string v0, "enable_notification"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHeartbeatInterval()J
    .locals 3

    .prologue
    .line 1876
    const-string v0, "heartbeat_interval"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHideOfflineContacts()Z
    .locals 2

    .prologue
    .line 1721
    const-string v0, "hide_offline_contacts"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getJidResource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1893
    const-string v0, "jid_resource"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRingtoneURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1801
    const-string v0, "ringtone"

    const-string v1, "content://settings/system/notification_sound"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowAwayOnIdle()Z
    .locals 2

    .prologue
    .line 1838
    const-string v0, "show_away_on_idle"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowMobileIndicator()Z
    .locals 2

    .prologue
    .line 1819
    const-string v0, "mobile_indicator"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUploadHeartbeatStat()Z
    .locals 2

    .prologue
    .line 1857
    const-string v0, "upload_heartbeat_stat"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVibrate()Z
    .locals 2

    .prologue
    .line 1759
    const-string v0, "vibrate"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVibrateWhen()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1778
    const-string v0, "vibrate-when"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1779
    if-eqz v0, :cond_0

    .line 1782
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getVibrate()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "always"

    goto :goto_0

    :cond_1
    const-string v0, "never"

    goto :goto_0
.end method

.method public setAutomaticallyConnectToGTalkServer(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setAutomaticallyConnectGTalk(Landroid/content/ContentResolver;Z)V

    .line 1694
    return-void
.end method

.method public setEnableNotification(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setEnableNotification(Landroid/content/ContentResolver;Z)V

    .line 1732
    return-void
.end method

.method public setHeartbeatInterval(J)V
    .locals 1
    .parameter

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setHeartbeatInterval(Landroid/content/ContentResolver;J)V

    .line 1868
    return-void
.end method

.method public setHideOfflineContacts(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setHideOfflineContacts(Landroid/content/ContentResolver;Z)V

    .line 1713
    return-void
.end method

.method public setJidResource(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setJidResource(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1886
    return-void
.end method

.method public setRingtoneURI(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1793
    return-void
.end method

.method public setShowAwayOnIdle(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setShowAwayOnIdle(Landroid/content/ContentResolver;Z)V

    .line 1830
    return-void
.end method

.method public setShowMobileIndicator(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setShowMobileIndicator(Landroid/content/ContentResolver;Z)V

    .line 1811
    return-void
.end method

.method public setUploadHeartbeatStat(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setUploadHeartbeatStat(Landroid/content/ContentResolver;Z)V

    .line 1849
    return-void
.end method

.method public setVibrate(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setVibrate(Landroid/content/ContentResolver;Z)V

    .line 1751
    return-void
.end method

.method public setVibrateWhen(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1769
    return-void
.end method
