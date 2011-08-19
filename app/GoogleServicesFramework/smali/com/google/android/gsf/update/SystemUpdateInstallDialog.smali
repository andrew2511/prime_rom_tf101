.class public Lcom/google/android/gsf/update/SystemUpdateInstallDialog;
.super Landroid/app/Activity;
.source "SystemUpdateInstallDialog.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field static volatile sIsDialogUp:Z


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mButtonClicked:Z

.field private mCountdownEnd:J

.field private mDefaultListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mLastBatteryState:I

.field private mMessage:Landroid/widget/TextView;

.field private mPending:Landroid/app/PendingIntent;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mWatcher:Lcom/google/android/gsf/update/StateWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->sIsDialogUp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 56
    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    .line 69
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$1;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDefaultListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mButtonClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->startCountdown()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->refreshStatus(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->reschedule(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->stopCountdown()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->updateCountdownMessage(J)V

    return-void
.end method

.method private refreshStatus(Z)V
    .locals 10
    .parameter "forceRefresh"

    .prologue
    const-wide/16 v8, 0x0

    const v7, 0x7f0b002c

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 343
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v3}, Lcom/google/android/gsf/update/StateWatcher;->getBatteryState()I

    move-result v0

    .line 345
    .local v0, batteryState:I
    if-nez p1, :cond_1

    iget v3, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mLastBatteryState:I

    if-ne v0, v3, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iput v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mLastBatteryState:I

    .line 350
    iget-wide v3, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    cmp-long v3, v3, v8

    if-gtz v3, :cond_0

    .line 359
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "next_dialog"

    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-nez v3, :cond_2

    move v1, v5

    .line 361
    .local v1, firstTime:Z
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 386
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "update_dialog_message"

    invoke-static {v3, v4}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, message:Ljava/lang/CharSequence;
    if-nez v2, :cond_5

    .line 389
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->setDefaultMessage()V

    .line 393
    :goto_2
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #firstTime:Z
    .end local v2           #message:Ljava/lang/CharSequence;
    :cond_2
    move v1, v6

    .line 359
    goto :goto_1

    .line 363
    .restart local v1       #firstTime:Z
    :pswitch_1
    if-nez v1, :cond_3

    .line 364
    const-string v3, "SystemUpdateInstallDialog"

    const-string v4, "battery too low; skipping"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0, v5}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->reschedule(Z)V

    .line 366
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->finish()V

    goto :goto_0

    .line 369
    :cond_3
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mMessage:Landroid/widget/TextView;

    const v4, 0x7f080025

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 371
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 374
    :pswitch_2
    if-nez v1, :cond_4

    .line 375
    const-string v3, "SystemUpdateInstallDialog"

    const-string v4, "battery too low; skipping"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-direct {p0, v5}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->reschedule(Z)V

    .line 377
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->finish()V

    goto :goto_0

    .line 380
    :cond_4
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mMessage:Landroid/widget/TextView;

    const v4, 0x7f080026

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 382
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 391
    .restart local v2       #message:Ljava/lang/CharSequence;
    :cond_5
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private reschedule(Z)V
    .locals 5
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "next_dialog"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    .line 238
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "next_dialog"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mPending:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 241
    if-eqz p1, :cond_0

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private resumeCountdown()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 162
    const v1, 0x7f0b002c

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 163
    .local v0, b:Landroid/widget/Button;
    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 164
    new-instance v1, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$5;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$5;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v1, 0x7f0b002d

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    const v1, 0x7f0b002e

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->updateCountdownMessage(J)V

    .line 176
    return-void
.end method

.method private setDefaultMessage()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mMessage:Landroid/widget/TextView;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080024

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 403
    return-void

    .line 399
    :cond_0
    const v1, 0x7f080023

    goto :goto_0
.end method

.method private startCountdown()V
    .locals 4

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.checkin.CHECKIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    .line 152
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->resumeCountdown()V

    .line 153
    return-void
.end method

.method private stopCountdown()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 183
    iget-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    .line 184
    const v1, 0x3112a

    const-string v2, "install-countdown-cancel"

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 185
    iput-wide v4, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    .line 187
    :cond_0
    const v1, 0x7f0b002c

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 188
    .local v0, b:Landroid/widget/Button;
    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 189
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDefaultListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v1, 0x7f0b002d

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 191
    const v1, 0x7f0b002e

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 192
    return-void
.end method

.method private updateCountdownMessage(J)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 200
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 204
    iget-wide v2, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 205
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mMessage:Landroid/widget/TextView;

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 206
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->finish()V

    .line 207
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_approved"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    sput-boolean v9, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->sIsDialogUp:Z

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 213
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    .line 214
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f09

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-wide v3, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    sub-int/2addr v2, v8

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v5, v2

    sub-long v2, v3, v5

    sub-long v0, v2, v0

    long-to-int v0, v0

    .line 219
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$6;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;J)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "dialog_trigger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mPending:Landroid/app/PendingIntent;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mHandler:Landroid/os/Handler;

    .line 90
    const-string v0, "update"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 92
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mAlarmManager:Landroid/app/AlarmManager;

    .line 94
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->requestWindowFeature(I)Z

    .line 95
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->setContentView(I)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 99
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mMessage:Landroid/widget/TextView;

    .line 100
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->setDefaultMessage()V

    .line 102
    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mButtonClicked:Z

    .line 104
    new-instance v0, Lcom/google/android/gsf/update/StateWatcher;

    new-instance v1, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$2;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$2;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/update/StateWatcher;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    .line 111
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDefaultListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$3;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$3;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$4;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$4;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    if-eqz p1, :cond_0

    .line 139
    const-string v0, "countdown_end"

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iput-wide v4, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->setIntent(Landroid/content/Intent;)V

    .line 317
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->finish()V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    sget-boolean v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->reschedule(Z)V

    .line 325
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->finish()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 291
    const-string v0, "countdown_end"

    iget-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 292
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPrefs"
    .parameter "key"

    .prologue
    .line 331
    const-string v0, "status"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$7;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$7;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 338
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const v6, 0x3112a

    const/4 v5, 0x1

    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 253
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mPending:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 254
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v1}, Lcom/google/android/gsf/update/StateWatcher;->start()V

    .line 256
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->onNewIntent(Landroid/content/Intent;)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 260
    sput-boolean v5, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->sIsDialogUp:Z

    .line 261
    invoke-static {p0}, Lcom/google/android/gsf/update/SystemUpdateService;->cancelNotifications(Landroid/content/Context;)V

    .line 262
    invoke-direct {p0, v5}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->refreshStatus(Z)V

    .line 264
    iget-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 265
    const-string v1, "install-countdown-resume"

    invoke-static {v6, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 266
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->resumeCountdown()V

    .line 269
    :cond_2
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 270
    .local v0, state:I
    if-eqz v0, :cond_0

    .line 271
    const-string v1, "SystemUpdateInstallDialog"

    const-string v2, "OTA update prompt postponed by phone call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v1, "install-countdown-stop-phone"

    invoke-static {v6, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 273
    invoke-direct {p0, v5}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->reschedule(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->finish()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 298
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->stopCountdown()V

    .line 299
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/StateWatcher;->stop()V

    .line 300
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->sIsDialogUp:Z

    .line 301
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 303
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->reschedule(Z)V

    .line 304
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 282
    iget-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mButtonClicked:Z

    if-nez v0, :cond_0

    .line 284
    const v0, 0x3112a

    const-string v1, "user-leave"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 286
    :cond_0
    return-void
.end method
