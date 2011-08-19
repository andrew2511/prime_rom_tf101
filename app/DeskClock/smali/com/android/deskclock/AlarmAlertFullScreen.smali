.class public Lcom/android/deskclock/AlarmAlertFullScreen;
.super Landroid/app/Activity;
.source "AlarmAlertFullScreen.java"


# instance fields
.field protected mAlarm:Lcom/android/deskclock/Alarm;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeBehavior:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    new-instance v0, Lcom/android/deskclock/AlarmAlertFullScreen$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$1;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmAlertFullScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->snooze()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/AlarmAlertFullScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(Z)V

    return-void
.end method

.method private dismiss(Z)V
    .locals 3
    .parameter "killed"

    .prologue
    .line 196
    if-eqz p1, :cond_1

    const-string v1, "Alarm killed"

    :goto_0
    invoke-static {v1}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 199
    if-nez p1, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 202
    .local v0, nm:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->stopService(Landroid/content/Intent;)Z

    .line 205
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->finish()V

    .line 206
    return-void

    .line 196
    :cond_1
    const-string v1, "Alarm dismissed by user"

    goto :goto_0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 191
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v0, p0}, Lcom/android/deskclock/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method private snooze()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 140
    const v0, 0x7f0e0002

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0, v9}, Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(Z)V

    .line 188
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "snooze_duration"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0xea60

    mul-int/2addr v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 151
    iget-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v3, v3, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v3, v1, v2}, Lcom/android/deskclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 156
    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 159
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v1, p0}, Lcom/android/deskclock/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 160
    const v2, 0x7f080034

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v1, v4, v9

    invoke-virtual {p0, v2, v4}, Lcom/android/deskclock/AlarmAlertFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 163
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/deskclock/AlarmReceiver;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    const-string v4, "cancel_snooze"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v4, "intent.extra.alarm"

    iget-object v5, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    iget-object v4, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v4, v4, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v4, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 168
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    .line 169
    new-instance v5, Landroid/app/Notification;

    const v6, 0x7f020037

    const-wide/16 v7, 0x0

    invoke-direct {v5, v6, v1, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 171
    const v6, 0x7f080035

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p0, v3}, Lcom/android/deskclock/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/deskclock/AlarmAlertFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, p0, v1, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 174
    iget v1, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x12

    iput v1, v5, Landroid/app/Notification;->flags:I

    .line 176
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v4, v1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 178
    const v1, 0x7f08001a

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-virtual {p0, v1, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 184
    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->stopService(Landroid/content/Intent;)Z

    .line 187
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->finish()V

    goto/16 :goto_0
.end method

.method private updateLayout()V
    .locals 4

    .prologue
    .line 111
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 113
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/high16 v2, 0x7f04

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->setContentView(Landroid/view/View;)V

    .line 117
    const v2, 0x7f0e0002

    invoke-virtual {p0, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 118
    .local v1, snooze:Landroid/widget/Button;
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 119
    new-instance v2, Lcom/android/deskclock/AlarmAlertFullScreen$2;

    invoke-direct {v2, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$2;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v2, 0x7f0e0003

    invoke-virtual {p0, v2}, Lcom/android/deskclock/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/deskclock/AlarmAlertFullScreen$3;

    invoke-direct {v3, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$3;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->setTitle()V

    .line 135
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 244
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 245
    .local v0, up:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 270
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .end local v0           #up:Z
    :cond_0
    move v0, v3

    .line 244
    goto :goto_0

    .line 252
    .restart local v0       #up:Z
    :sswitch_0
    if-eqz v0, :cond_1

    .line 253
    iget v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVolumeBehavior:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_2
    move v1, v2

    .line 266
    goto :goto_1

    .line 255
    :pswitch_0
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->snooze()V

    goto :goto_2

    .line 259
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/deskclock/AlarmAlertFullScreen;->dismiss(Z)V

    goto :goto_2

    .line 245
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "intent.extra.alarm"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/Alarm;

    iput-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    .line 80
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "volume_button_setting"

    const-string v5, "2"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, vol:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVolumeBehavior:I

    .line 86
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 87
    .local v2, win:Landroid/view/Window;
    const/high16 v3, 0x48

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "screen_off"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    const v3, 0x200081

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->updateLayout()V

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "alarm_killed"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v3, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 238
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 218
    const-string v0, "intent.extra.alarm"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    .line 220
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->setTitle()V

    .line 221
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 227
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v2, v2, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v1, v2}, Lcom/android/deskclock/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/deskclock/Alarm;

    move-result-object v1

    if-nez v1, :cond_0

    .line 228
    const v1, 0x7f0e0002

    invoke-virtual {p0, v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 229
    .local v0, snooze:Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 231
    .end local v0           #snooze:Landroid/widget/Button;
    :cond_0
    return-void
.end method
