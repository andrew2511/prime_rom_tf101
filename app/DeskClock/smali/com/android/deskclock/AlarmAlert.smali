.class public Lcom/android/deskclock/AlarmAlert;
.super Lcom/android/deskclock/AlarmAlertFullScreen;
.source "AlarmAlert.java"


# instance fields
.field private final MAX_KEYGUARD_CHECKS:I

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardRetryCount:I

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;-><init>()V

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/deskclock/AlarmAlert;->MAX_KEYGUARD_CHECKS:I

    .line 39
    new-instance v0, Lcom/android/deskclock/AlarmAlert$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmAlert$1;-><init>(Lcom/android/deskclock/AlarmAlert;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlert;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/android/deskclock/AlarmAlert$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmAlert$2;-><init>(Lcom/android/deskclock/AlarmAlert;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlert;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmAlert;Landroid/app/KeyguardManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmAlert;->handleScreenOff(Landroid/app/KeyguardManager;)V

    return-void
.end method

.method private checkRetryCount()Z
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/android/deskclock/AlarmAlert;->mKeyguardRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/deskclock/AlarmAlert;->mKeyguardRetryCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 82
    const-string v0, "Tried to read keyguard status too many times, bailing..."

    invoke-static {v0}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleScreenOff(Landroid/app/KeyguardManager;)V
    .locals 4
    .parameter

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlert;->checkRetryCount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlert;->checkRetryCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlert;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/AlarmAlert;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/AlarmAlertFullScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const-string v1, "intent.extra.alarm"

    iget-object v2, p0, Lcom/android/deskclock/AlarmAlert;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    const-string v1, "screen_off"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlert;->startActivity(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlert;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlert;->finish()V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/deskclock/AlarmAlertFullScreen;->onCreate(Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlert;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/AlarmAlert;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->onDestroy()V

    .line 70
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlert;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlert;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    return-void
.end method
