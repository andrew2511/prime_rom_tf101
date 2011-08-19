.class public Lcom/android/deskclock/AlarmKlaxon;
.super Landroid/app/Service;
.source "AlarmKlaxon.java"


# static fields
.field private static final sVibratePattern:[J


# instance fields
.field private mCurrentAlarm:Lcom/android/deskclock/Alarm;

.field private mHandler:Landroid/os/Handler;

.field private mInitialCallState:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlaying:Z

.field private mStartTime:J

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/deskclock/AlarmKlaxon;->sVibratePattern:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mPlaying:Z

    .line 58
    new-instance v0, Lcom/android/deskclock/AlarmKlaxon$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmKlaxon$1;-><init>(Lcom/android/deskclock/AlarmKlaxon;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/android/deskclock/AlarmKlaxon$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmKlaxon$2;-><init>(Lcom/android/deskclock/AlarmKlaxon;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmKlaxon;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmKlaxon;->sendKillBroadcast(Lcom/android/deskclock/Alarm;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/AlarmKlaxon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mInitialCallState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/AlarmKlaxon;)Lcom/android/deskclock/Alarm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/deskclock/AlarmKlaxon;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private disableKiller()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    return-void
.end method

.method private enableKiller(Lcom/android/deskclock/Alarm;)V
    .locals 6
    .parameter "alarm"

    .prologue
    .line 286
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "auto_silence"

    const-string v4, "10"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, autoSnooze:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 291
    .local v1, autoSnoozeMinutes:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/android/deskclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    mul-int/lit16 v4, v1, 0x3e8

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 295
    :cond_0
    return-void
.end method

.method private play(Lcom/android/deskclock/Alarm;)V
    .locals 6
    .parameter "alarm"

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmKlaxon;->stop()V

    .line 161
    iget-boolean v3, p1, Lcom/android/deskclock/Alarm;->silent:Z

    if-nez v3, :cond_1

    .line 162
    iget-object v0, p1, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 165
    .local v0, alert:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 166
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 175
    :cond_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 176
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/android/deskclock/AlarmKlaxon$3;

    invoke-direct {v4, p0}, Lcom/android/deskclock/AlarmKlaxon$3;-><init>(Lcom/android/deskclock/AlarmKlaxon;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 189
    :try_start_0
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    const-string v3, "Using the in-call alarm"

    invoke-static {v3}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v4, 0x3e00

    const/high16 v5, 0x3e00

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 193
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmKlaxon;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const v5, 0x7f070001

    invoke-direct {p0, v3, v4, v5}, Lcom/android/deskclock/AlarmKlaxon;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 198
    :goto_0
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v3}, Lcom/android/deskclock/AlarmKlaxon;->startAlarm(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0           #alert:Landroid/net/Uri;
    :cond_1
    :goto_1
    iget-boolean v3, p1, Lcom/android/deskclock/Alarm;->vibrate:Z

    if-eqz v3, :cond_3

    .line 218
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    sget-object v4, Lcom/android/deskclock/AlarmKlaxon;->sVibratePattern:[J

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 223
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmKlaxon;->enableKiller(Lcom/android/deskclock/Alarm;)V

    .line 224
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mPlaying:Z

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mStartTime:J

    .line 226
    return-void

    .line 196
    .restart local v0       #alert:Landroid/net/Uri;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 200
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "Using the fallback ringtone"

    invoke-static {v3}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 205
    :try_start_2
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 206
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmKlaxon;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v5, 0x7f07

    invoke-direct {p0, v3, v4, v5}, Lcom/android/deskclock/AlarmKlaxon;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 208
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v3}, Lcom/android/deskclock/AlarmKlaxon;->startAlarm(Landroid/media/MediaPlayer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 209
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 211
    .local v2, ex2:Ljava/lang/Exception;
    const-string v3, "Failed to play fallback ringtone"

    invoke-static {v3, v2}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 220
    .end local v0           #alert:Landroid/net/Uri;
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #ex2:Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Lcom/android/deskclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    goto :goto_2
.end method

.method private sendKillBroadcast(Lcom/android/deskclock/Alarm;)V
    .locals 8
    .parameter "alarm"

    .prologue
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/deskclock/AlarmKlaxon;->mStartTime:J

    sub-long v1, v4, v6

    .line 143
    .local v1, millis:J
    long-to-double v4, v1

    const-wide v6, 0x40ed4c0000000000L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    .line 144
    .local v3, minutes:I
    new-instance v0, Landroid/content/Intent;

    const-string v4, "alarm_killed"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, alarmKilled:Landroid/content/Intent;
    const-string v4, "intent.extra.alarm"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    const-string v4, "alarm_killed_timeout"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmKlaxon;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method private setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V
    .locals 7
    .parameter "resources"
    .parameter "player"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 246
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 247
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 249
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 251
    :cond_0
    return-void
.end method

.method private startAlarm(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "player"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 232
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/deskclock/AlarmKlaxon;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 235
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 237
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 238
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 239
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 241
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 89
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmKlaxon;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    .line 91
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmKlaxon;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 93
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 95
    invoke-static {p0}, Lcom/android/deskclock/AlarmAlertWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmKlaxon;->stop()V

    .line 102
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 103
    invoke-static {}, Lcom/android/deskclock/AlarmAlertWakeLock;->releaseCpuLock()V

    .line 104
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x2

    .line 114
    if-nez p1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmKlaxon;->stopSelf()V

    move v1, v2

    .line 138
    :goto_0
    return v1

    .line 119
    :cond_0
    const-string v1, "intent.extra.alarm"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    .line 122
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    if-nez v0, :cond_1

    .line 123
    const-string v1, "AlarmKlaxon failed to parse the alarm from the intent"

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmKlaxon;->stopSelf()V

    move v1, v2

    .line 125
    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;

    if-eqz v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;

    invoke-direct {p0, v1}, Lcom/android/deskclock/AlarmKlaxon;->sendKillBroadcast(Lcom/android/deskclock/Alarm;)V

    .line 132
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmKlaxon;->play(Lcom/android/deskclock/Alarm;)V

    .line 133
    iput-object v0, p0, Lcom/android/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcom/android/deskclock/Alarm;

    .line 136
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mInitialCallState:I

    .line 138
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 259
    iget-boolean v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mPlaying:Z

    if-eqz v1, :cond_1

    .line 260
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mPlaying:Z

    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, alarmDone:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmKlaxon;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 268
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 275
    .end local v0           #alarmDone:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/AlarmKlaxon;->disableKiller()V

    .line 276
    return-void
.end method
