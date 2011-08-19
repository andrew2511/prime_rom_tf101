.class public abstract Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;
.super Landroid/app/IntentService;
.source "C2dmBaseReceiverService.java"


# instance fields
.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "notification.android@gmail.com"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 118
    const-string v9, "registration_id"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, registrationId:Ljava/lang/String;
    const-string v9, "error"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, error:Ljava/lang/String;
    const-string v9, "unregistered"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, removed:Ljava/lang/String;
    const-string v9, "youtube"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 122
    .local v4, prefs:Landroid/content/SharedPreferences;
    if-eqz v6, :cond_1

    .line 124
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "c2dm_device_registration_id"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->onUnregistered(Landroid/content/Context;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    if-eqz v3, :cond_3

    .line 129
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "c2dm_device_registration_id"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Registration error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1, v3}, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->onError(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    const-string v9, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 133
    const-string v9, "c2dm_backoff"

    const-wide/16 v10, 0x7530

    invoke-interface {v4, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 135
    .local v1, backoffTimeMs:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scheduling registration retry, backoff = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 136
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.google.android.c2dm.intent.RETRY"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v7, retryIntent:Landroid/content/Intent;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p1, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 139
    .local v8, retryPIntent:Landroid/app/PendingIntent;
    const-string v9, "alarm"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 140
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v9, 0x3

    invoke-virtual {v0, v9, v1, v2, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 143
    const-wide/16 v9, 0x2

    mul-long/2addr v9, v1

    const-wide/32 v11, 0x1b77400

    cmp-long v9, v9, v11

    if-gez v9, :cond_2

    .line 144
    const-wide/16 v9, 0x2

    mul-long/2addr v1, v9

    .line 146
    :cond_2
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "c2dm_backoff"

    invoke-interface {v9, v10, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 149
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #backoffTimeMs:J
    .end local v7           #retryIntent:Landroid/content/Intent;
    .end local v8           #retryPIntent:Landroid/app/PendingIntent;
    :cond_3
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "c2dm_device_registration_id"

    invoke-interface {v9, v10, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->onRegistered(Landroid/content/Context;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 82
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 83
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "C2DM_LIB"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 84
    iget-object v1, p0, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 94
    return-void
.end method

.method public abstract onError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkState(Z)V

    .line 102
    const-string v0, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-direct {p0, p0, p1}, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    .line 109
    :cond_0
    :goto_1
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_2
    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {p0, p0, p1}, Lcom/google/android/youtube/app/c2dm/C2dmBaseReceiverService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 106
    :cond_3
    const-string v0, "com.google.android.c2dm.intent.RETRY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method protected abstract onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onRegistered(Landroid/content/Context;)V
.end method

.method public abstract onUnregistered(Landroid/content/Context;)V
.end method
