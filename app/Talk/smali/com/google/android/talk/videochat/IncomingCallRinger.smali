.class public Lcom/google/android/talk/videochat/IncomingCallRinger;
.super Lcom/google/android/talk/videochat/CallRinger;
.source "IncomingCallRinger.java"


# instance fields
.field private mNotificationType:Ljava/lang/String;

.field private mVibrateWhen:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;J)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "accountId"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/CallRinger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 36
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v0

    .line 37
    .local v0, settingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoNotification()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mNotificationType:Ljava/lang/String;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoVibrateWhen()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mVibrateWhen:Ljava/lang/String;

    .line 40
    iget-object v2, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRinger:Lcom/google/android/talk/videochat/Ringer;

    iget-object v3, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mVibrateWhen:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/talk/videochat/Ringer;->setVibrateWhen(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoRingtoneURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/talk/videochat/IncomingCallRinger;->setRingtoneUrl(Ljava/lang/String;)V

    .line 46
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 47
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-nez v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mRinger:Lcom/google/android/talk/videochat/Ringer;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/android/talk/videochat/Ringer;->setStreamType(I)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public getNotificationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mNotificationType:Ljava/lang/String;

    return-object v0
.end method

.method public getVibrateWhen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallRinger;->mVibrateWhen:Ljava/lang/String;

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 68
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IncomingCallRinger] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method
