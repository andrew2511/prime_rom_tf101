.class public Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;
.super Lcom/android/internal/app/AlertActivity;
.source "PCSyncLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$USBStateChangeReceiver;,
        Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PhoneStateChangeReceiver;,
        Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$TimeOutTask;,
        Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;
    }
.end annotation


# instance fields
.field private ap:Lcom/android/internal/app/AlertController$AlertParams;

.field private mPhoneStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PhoneStateChangeReceiver;

.field private mPhoneStateIntentFilter:Landroid/content/IntentFilter;

.field private mTask:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

.field private mTaskRetained:Z

.field private mUSBStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$USBStateChangeReceiver;

.field private mUSBStateIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mTaskRetained:Z

    .line 398
    return-void
.end method

.method static synthetic access$200(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;)Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mTask:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 422
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 425
    .local v0, NegativeResult:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 426
    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mTask:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mTask:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    invoke-static {v1}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->access$300(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;)V

    .line 429
    :cond_0
    return-void

    .line 422
    .end local v0           #NegativeResult:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 69
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v7, "AGENT_CONNECTED"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 70
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v3, i:Landroid/content/Intent;
    const-string v7, "com.asus.pcsynctool"

    const-string v8, "com.asus.pcsynctool.activity.PCSyncActivity"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const/high16 v7, 0x1020

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v3}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->finish()V

    .line 121
    .end local v3           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->getWindow()Landroid/view/Window;

    move-result-object v7

    const v8, 0x106000d

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 77
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 79
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v7, "ADB_SETTING"

    const/4 v8, -0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 80
    const-string v7, "ADB_SETTING"

    invoke-virtual {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "adb_enabled"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "adb_enabled"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    iget-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mPhoneStateIntentFilter:Landroid/content/IntentFilter;

    if-nez v7, :cond_3

    .line 89
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    iput-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mPhoneStateIntentFilter:Landroid/content/IntentFilter;

    .line 90
    iget-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mPhoneStateIntentFilter:Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    :cond_3
    iget-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mUSBStateIntentFilter:Landroid/content/IntentFilter;

    if-nez v7, :cond_4

    .line 93
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    iput-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mUSBStateIntentFilter:Landroid/content/IntentFilter;

    .line 94
    iget-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mUSBStateIntentFilter:Landroid/content/IntentFilter;

    const-string v8, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    :cond_4
    iget-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mPhoneStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PhoneStateChangeReceiver;

    if-nez v7, :cond_5

    .line 98
    new-instance v7, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PhoneStateChangeReceiver;

    invoke-direct {v7, p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PhoneStateChangeReceiver;-><init>(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;)V

    iput-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mPhoneStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PhoneStateChangeReceiver;

    .line 99
    iget-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mPhoneStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PhoneStateChangeReceiver;

    iget-object v8, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mPhoneStateIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v7, v8}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    :cond_5
    iget-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mUSBStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$USBStateChangeReceiver;

    if-nez v7, :cond_6

    .line 102
    new-instance v7, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$USBStateChangeReceiver;

    invoke-direct {v7, p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$USBStateChangeReceiver;-><init>(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;)V

    iput-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mUSBStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$USBStateChangeReceiver;

    .line 103
    iget-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mUSBStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$USBStateChangeReceiver;

    iget-object v8, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mUSBStateIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v7, v8}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    :cond_6
    iget-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    .line 107
    iget-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    const v8, 0x7f030005

    invoke-virtual {p0, v8}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 108
    iget-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v7, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 109
    invoke-virtual {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 110
    .local v4, mInflater:Landroid/view/LayoutInflater;
    const v7, 0x1090070

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 111
    .local v5, progressView:Landroid/view/View;
    const v7, 0x102000b

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    .local v0, cancelText:Landroid/widget/TextView;
    const v7, 0x7f030001

    new-array v8, v11, [Ljava/lang/Object;

    const v9, 0x7f030006

    invoke-virtual {p0, v9}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v5, v7, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 114
    invoke-virtual {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->setupAlert()V

    .line 116
    invoke-virtual {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 117
    iput-boolean v11, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mTaskRetained:Z

    .line 118
    invoke-virtual {p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    iput-object v7, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mTask:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    goto/16 :goto_0

    .line 82
    .end local v0           #cancelText:Landroid/widget/TextView;
    .end local v4           #mInflater:Landroid/view/LayoutInflater;
    .end local v5           #progressView:Landroid/view/View;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 83
    .local v2, ex:Landroid/provider/Settings$SettingNotFoundException;
    const-string v7, "ADB_SETTING"

    invoke-interface {v1, v7, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mPhoneStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PhoneStateChangeReceiver;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mPhoneStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PhoneStateChangeReceiver;

    invoke-virtual {p0, v0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    iput-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mPhoneStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PhoneStateChangeReceiver;

    .line 152
    iput-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mPhoneStateIntentFilter:Landroid/content/IntentFilter;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mUSBStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$USBStateChangeReceiver;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mUSBStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$USBStateChangeReceiver;

    invoke-virtual {p0, v0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    iput-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mUSBStateChangeReceiver:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$USBStateChangeReceiver;

    .line 157
    iput-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mUSBStateIntentFilter:Landroid/content/IntentFilter;

    .line 159
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 163
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 164
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 126
    iget-boolean v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mTaskRetained:Z

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mTask:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    invoke-direct {v0, p0, p0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;-><init>(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;)V

    iput-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mTask:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    .line 131
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mTask:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iput-boolean v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mTaskRetained:Z

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mTask:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mTask:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    invoke-virtual {v1}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->mTask:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
