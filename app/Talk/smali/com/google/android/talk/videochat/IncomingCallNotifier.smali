.class public Lcom/google/android/talk/videochat/IncomingCallNotifier;
.super Ljava/lang/Object;
.source "IncomingCallNotifier.java"


# static fields
.field private static final NICKNAME_PROJECTION:[Ljava/lang/String;

.field private static sNotifier:Lcom/google/android/talk/videochat/IncomingCallNotifier;


# instance fields
.field private mCallRinger:Lcom/google/android/talk/videochat/IncomingCallRinger;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "nickname"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->NICKNAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mContext:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method private createSystemNotification(Ljava/lang/String;Landroid/content/Intent;ZZ)Landroid/app/Notification;
    .locals 6
    .parameter "displayName"
    .parameter "intent"
    .parameter "isVideo"
    .parameter "isPopupNotification"

    .prologue
    const/4 v5, 0x0

    .line 217
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 218
    .local v1, notification:Landroid/app/Notification;
    iget-object v3, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    const v4, 0x7f0c0104

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 223
    const v3, 0x1080077

    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 226
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x23

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 229
    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, closeDialogs:Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    iget-object v3, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mContext:Landroid/content/Context;

    const/high16 v4, 0x800

    invoke-static {v3, v5, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 242
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_1

    const v5, 0x7f0c0109

    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, p1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 251
    if-eqz p4, :cond_2

    .line 262
    :goto_2
    return-object v1

    .line 218
    .end local v0           #closeDialogs:Landroid/content/Intent;
    .end local v2           #pendingIntent:Landroid/app/PendingIntent;
    :cond_0
    const v4, 0x7f0c0107

    goto :goto_0

    .line 242
    .restart local v0       #closeDialogs:Landroid/content/Intent;
    .restart local v2       #pendingIntent:Landroid/app/PendingIntent;
    :cond_1
    const v5, 0x7f0c010a

    goto :goto_1

    .line 260
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/IncomingCallNotifier;->setNotificationRinger(Landroid/app/Notification;)V

    goto :goto_2
.end method

.method private getNickname(Ljava/lang/String;J)Ljava/lang/String;
    .locals 8
    .parameter "jid"
    .parameter "accountId"

    .prologue
    const/4 v1, 0x0

    .line 98
    const/4 v7, 0x0

    .line 99
    .local v7, retVal:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 100
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/talk/videochat/IncomingCallNotifier;->NICKNAME_PROJECTION:[Ljava/lang/String;

    const-string v3, "username=? AND account=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 106
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 108
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 112
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_1
    if-nez v7, :cond_2

    .line 117
    move-object v7, p1

    .line 120
    :cond_2
    return-object v7

    .line 112
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getNotifier(Landroid/content/Context;)Lcom/google/android/talk/videochat/IncomingCallNotifier;
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    sget-object v0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->sNotifier:Lcom/google/android/talk/videochat/IncomingCallNotifier;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/google/android/talk/videochat/IncomingCallNotifier;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/IncomingCallNotifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->sNotifier:Lcom/google/android/talk/videochat/IncomingCallNotifier;

    .line 94
    :cond_0
    sget-object v0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->sNotifier:Lcom/google/android/talk/videochat/IncomingCallNotifier;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 293
    const/4 v0, 0x3

    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IncomingCallNotifier] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method private setNotificationRinger(Landroid/app/Notification;)V
    .locals 10
    .parameter "notification"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 266
    iget-object v6, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mCallRinger:Lcom/google/android/talk/videochat/IncomingCallRinger;

    invoke-virtual {v6}, Lcom/google/android/talk/videochat/IncomingCallRinger;->getRingtoneUrl()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, ringtoneUrl:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mCallRinger:Lcom/google/android/talk/videochat/IncomingCallRinger;

    invoke-virtual {v6}, Lcom/google/android/talk/videochat/IncomingCallRinger;->getVibrateWhen()Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, vibrateWhen:Ljava/lang/String;
    const-string v6, "always"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 276
    .local v3, vibrateAlways:Z
    if-nez v3, :cond_2

    const-string v6, "silent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v8

    .line 278
    .local v4, vibrateSilent:Z
    :goto_0
    iget-object v6, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 281
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-ne v6, v8, :cond_3

    move v1, v8

    .line 283
    .local v1, nowSilent:Z
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    :goto_2
    iput-object v6, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 287
    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 288
    :cond_0
    iget v6, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p1, Landroid/app/Notification;->defaults:I

    .line 290
    :cond_1
    return-void

    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #nowSilent:Z
    .end local v4           #vibrateSilent:Z
    :cond_2
    move v4, v9

    .line 276
    goto :goto_0

    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v4       #vibrateSilent:Z
    :cond_3
    move v1, v9

    .line 281
    goto :goto_1

    .line 283
    .restart local v1       #nowSilent:Z
    :cond_4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_2
.end method


# virtual methods
.method public cancelNotification()V
    .locals 3

    .prologue
    .line 202
    const-string v0, "##### cancelNotification"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/IncomingCallNotifier;->log(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 207
    iget-object v1, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mCallRinger:Lcom/google/android/talk/videochat/IncomingCallRinger;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mCallRinger:Lcom/google/android/talk/videochat/IncomingCallRinger;

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/IncomingCallRinger;->stopRing()V

    .line 210
    :cond_0
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public postNotification(Ljava/lang/String;JZLcom/google/android/talk/videochat/CallState;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##### postNotification for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/IncomingCallNotifier;->log(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mCallRinger:Lcom/google/android/talk/videochat/IncomingCallRinger;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/google/android/talk/videochat/IncomingCallRinger;

    iget-object v2, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2, v3, p2, p3}, Lcom/google/android/talk/videochat/IncomingCallRinger;-><init>(Landroid/content/Context;Landroid/os/Handler;J)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mCallRinger:Lcom/google/android/talk/videochat/IncomingCallRinger;

    .line 156
    :cond_0
    const-string v0, "popup"

    iget-object v2, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mCallRinger:Lcom/google/android/talk/videochat/IncomingCallRinger;

    invoke-virtual {v2}, Lcom/google/android/talk/videochat/IncomingCallRinger;->getNotificationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 158
    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/talk/videochat/IncomingCallNotifier;->getNickname(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 164
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 166
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/google/android/talk/AlertNotificationFullScreenActivity;

    :goto_0
    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    const-string v0, "from"

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v0, "accountId"

    invoke-virtual {v4, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 171
    const-string v0, "isvideo"

    invoke-virtual {v4, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const-string v0, "iscollision"

    invoke-virtual {v4, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    const-string v0, "incoming_call"

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    const/high16 v0, 0x1004

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    invoke-direct {p0, v3, v4, p4, v2}, Lcom/google/android/talk/videochat/IncomingCallNotifier;->createSystemNotification(Ljava/lang/String;Landroid/content/Intent;ZZ)Landroid/app/Notification;

    move-result-object v0

    .line 184
    iget-object v3, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v5, 0x64

    invoke-virtual {v3, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 187
    if-eqz v2, :cond_1

    .line 189
    const-string v0, "talk"

    const-string v2, "[IncomingCallNotifier] postNotification: manually start activity for full screen incoming call alert"

    invoke-static {v0, v2}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 195
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 196
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallNotifier;->mCallRinger:Lcom/google/android/talk/videochat/IncomingCallRinger;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/IncomingCallRinger;->startRing()V

    .line 198
    :cond_1
    monitor-exit v1

    .line 199
    return-void

    .line 166
    :cond_2
    const-class v0, Lcom/google/android/talk/AlertNotificationActivity;

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
