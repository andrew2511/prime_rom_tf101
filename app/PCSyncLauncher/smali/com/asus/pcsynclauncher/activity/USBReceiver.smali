.class public Lcom/asus/pcsynclauncher/activity/USBReceiver;
.super Landroid/content/BroadcastReceiver;
.source "USBReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;
    }
.end annotation


# instance fields
.field private mPcSyncNotification:Landroid/app/Notification;

.field private pi:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x7f02

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 46
    const-string v0, "LauncherUsbReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB Receiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->NONE:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    .line 52
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    const-string v1, "enabled"

    const-string v2, "mtp"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "enabled"

    const-string v2, "mass_storage"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    :cond_0
    const-string v0, "LauncherUsbReceiver"

    const-string v1, "mtp AND ums functions not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    const-string v1, "LauncherUsbReceiver"

    const-string v2, "usb connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v1, "LauncherUsbReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extras: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->START_LAUNCHER:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    move-object v1, v0

    .line 77
    :goto_1
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 79
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 80
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 83
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f030006

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/high16 v5, 0x7f03

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 88
    sget-object v5, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->START_LAUNCHER:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    if-ne v1, v5, :cond_7

    .line 89
    const-string v1, "NOTIFICATION_ON"

    invoke-interface {v2, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 90
    const-string v1, "NOTIFICATION_ON"

    invoke-interface {v3, v1, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    invoke-static {p1, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/pcsynclauncher/activity/USBReceiver;->pi:Landroid/app/PendingIntent;

    .line 96
    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/USBReceiver;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 97
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/pcsynclauncher/activity/USBReceiver;->mPcSyncNotification:Landroid/app/Notification;

    .line 98
    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/USBReceiver;->mPcSyncNotification:Landroid/app/Notification;

    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 99
    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/USBReceiver;->mPcSyncNotification:Landroid/app/Notification;

    invoke-virtual {v0, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 66
    :cond_3
    const-string v0, "LauncherUsbReceiver"

    const-string v1, "usb state is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->CANCEL_NOTIFICATION:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    move-object v1, v0

    goto :goto_1

    .line 69
    :cond_4
    const-string v1, "com.asus.pcsynclauncher.PCSYNC_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 70
    sget-object v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->AGENT_CONNECTED:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    move-object v1, v0

    goto/16 :goto_1

    .line 71
    :cond_5
    const-string v1, "com.asus.pcsynclauncher.PCSYNC_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 72
    sget-object v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->AGENT_DISCONNECTED:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    move-object v1, v0

    goto/16 :goto_1

    .line 73
    :cond_6
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 74
    sget-object v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->CANCEL_NOTIFICATION:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    move-object v1, v0

    goto/16 :goto_1

    .line 101
    :cond_7
    sget-object v4, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->AGENT_CONNECTED:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    if-ne v1, v4, :cond_8

    .line 102
    const-string v0, "AGENT_CONNECTED"

    invoke-interface {v3, v0, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 103
    :cond_8
    sget-object v4, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->AGENT_DISCONNECTED:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    if-ne v1, v4, :cond_9

    .line 104
    const-string v0, "AGENT_CONNECTED"

    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 105
    :cond_9
    sget-object v3, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->CANCEL_NOTIFICATION:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    if-ne v1, v3, :cond_b

    .line 108
    const-string v1, "ADB_SETTING"

    invoke-interface {v2, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v7, :cond_a

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "adb_enabled"

    const-string v4, "ADB_SETTING"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    :cond_a
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ADB_SETTING"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "AGENT_CONNECTED"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NOTIFICATION_ON"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 114
    :cond_b
    const-string v0, "LauncherUsbReceiver"

    const-string v1, "action not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    move-object v1, v0

    goto/16 :goto_1
.end method
