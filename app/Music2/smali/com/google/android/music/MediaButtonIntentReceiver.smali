.class public Lcom/google/android/music/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field private static final LONG_PRESS_DELAY:I = 0x3e8

.field private static final MSG_LONGPRESS_TIMEOUT:I = 0x1

.field public static RELEASE_RECEIVER_LOCK:Ljava/lang/String;

.field private static mDown:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mLastClickTime:J

.field private static mLaunched:Z

.field public static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 28
    sput-boolean v2, Lcom/google/android/music/MediaButtonIntentReceiver;->mDown:Z

    .line 29
    sput-boolean v2, Lcom/google/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    .line 31
    const-string v0, "releasereceiverlock"

    sput-object v0, Lcom/google/android/music/MediaButtonIntentReceiver;->RELEASE_RECEIVER_LOCK:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/google/android/music/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lcom/google/android/music/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/google/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/google/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    sput-boolean p0, Lcom/google/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, intentAction:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 57
    .local v5, extras:Landroid/os/Bundle;
    if-eqz v5, :cond_0

    .line 58
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    .line 60
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 61
    const-string v9, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 62
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {v6, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v6, i:Landroid/content/Intent;
    const-string v9, "com.android.music.musicservicecommand"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v9, "command"

    const-string v10, "pause"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, p1, v6}, Lcom/google/android/music/MediaButtonIntentReceiver;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 145
    .end local v6           #i:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    const-string v9, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 67
    const-string v9, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 70
    .local v2, event:Landroid/view/KeyEvent;
    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 75
    .local v8, keycode:I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 76
    .local v0, action:I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 82
    .local v3, eventtime:J
    const/4 v1, 0x0

    .line 83
    .local v1, command:Ljava/lang/String;
    sparse-switch v8, :sswitch_data_0

    .line 105
    :goto_1
    if-eqz v1, :cond_1

    .line 106
    if-nez v0, :cond_7

    .line 107
    sget-boolean v9, Lcom/google/android/music/MediaButtonIntentReceiver;->mDown:Z

    if-eqz v9, :cond_5

    .line 108
    const-string v9, "togglepause"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "play"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    sget-wide v9, Lcom/google/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4

    sget-wide v9, Lcom/google/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v9, v3, v9

    const-wide/16 v11, 0x3e8

    cmp-long v9, v9, v11

    if-lez v9, :cond_4

    .line 112
    sget-object v9, Lcom/google/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v10, Lcom/google/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/music/MediaButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/google/android/music/MediaButtonIntentReceiver;->abortBroadcast()V

    goto :goto_0

    .line 85
    :sswitch_0
    const-string v1, "stop"

    .line 86
    goto :goto_1

    .line 89
    :sswitch_1
    const-string v1, "togglepause"

    .line 90
    goto :goto_1

    .line 92
    :sswitch_2
    const-string v1, "next"

    .line 93
    goto :goto_1

    .line 95
    :sswitch_3
    const-string v1, "previous"

    .line 96
    goto :goto_1

    .line 98
    :sswitch_4
    const-string v1, "pause"

    .line 99
    goto :goto_1

    .line 101
    :sswitch_5
    const-string v1, "play"

    goto :goto_1

    .line 120
    :cond_5
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {v6, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .restart local v6       #i:Landroid/content/Intent;
    const-string v9, "com.android.music.musicservicecommand"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const/16 v9, 0x4f

    if-ne v8, v9, :cond_6

    sget-wide v9, Lcom/google/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v9, v3, v9

    const-wide/16 v11, 0x12c

    cmp-long v9, v9, v11

    if-gez v9, :cond_6

    .line 124
    const-string v9, "command"

    const-string v10, "next"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, p1, v6}, Lcom/google/android/music/MediaButtonIntentReceiver;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 126
    const-wide/16 v9, 0x0

    sput-wide v9, Lcom/google/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 133
    :goto_3
    const/4 v9, 0x0

    sput-boolean v9, Lcom/google/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    .line 134
    const/4 v9, 0x1

    sput-boolean v9, Lcom/google/android/music/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_2

    .line 128
    :cond_6
    const-string v9, "command"

    invoke-virtual {v6, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, p1, v6}, Lcom/google/android/music/MediaButtonIntentReceiver;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 130
    sput-wide v3, Lcom/google/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    goto :goto_3

    .line 137
    .end local v6           #i:Landroid/content/Intent;
    :cond_7
    sget-object v9, Lcom/google/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    const/4 v9, 0x0

    sput-boolean v9, Lcom/google/android/music/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_2

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_0
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
        0x7e -> :sswitch_5
        0x7f -> :sswitch_4
    .end sparse-switch
.end method

.method startService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "i"

    .prologue
    const/4 v2, 0x1

    .line 148
    sget-object v1, Lcom/google/android/music/MediaButtonIntentReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 149
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 150
    .local v0, pmgr:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/google/android/music/MediaButtonIntentReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 152
    .end local v0           #pmgr:Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/google/android/music/MediaButtonIntentReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 153
    sget-object v1, Lcom/google/android/music/MediaButtonIntentReceiver;->RELEASE_RECEIVER_LOCK:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 155
    return-void
.end method
