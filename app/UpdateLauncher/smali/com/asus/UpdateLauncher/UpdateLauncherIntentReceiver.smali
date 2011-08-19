.class public Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateLauncherIntentReceiver.java"


# static fields
.field public static final ANDROID_SDCARD_PATH:Ljava/lang/String;

.field public static final ANDROID_STORAGE_PATH:Ljava/lang/String;

.field private static final DEBUG:Z

.field public static UPDATELAUNCHER_INDEX:I

.field private static in_boot:Z

.field private static mrunnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->DEBUG:Z

    .line 26
    sget-object v0, Landroid/os/Environment;->MOUNT_POINT_MICROSD:Ljava/lang/String;

    sput-object v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    .line 27
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_STORAGE_PATH:Ljava/lang/String;

    .line 34
    const/16 v0, 0x1c8

    sput v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->UPDATELAUNCHER_INDEX:I

    .line 35
    sput-boolean v2, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->mrunnable:Z

    .line 36
    sput-boolean v1, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->in_boot:Z

    return-void

    :cond_0
    move v0, v1

    .line 17
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 42
    monitor-enter p0

    .line 44
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 51
    sget-boolean v3, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->DEBUG:Z

    if-ne v3, v5, :cond_1

    .line 53
    const-string v3, "UpdateLauncherIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " path : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->mrunnable:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    :cond_2
    monitor-exit p0

    .line 203
    :goto_0
    return-void

    .line 59
    :cond_3
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->in_boot:Z

    if-ne v0, v5, :cond_4

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    const-string v2, "com.asus.UpdateLauncher.boot"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    :cond_4
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->mrunnable:Z

    .line 66
    const-string v0, "REASON"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 202
    :cond_5
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 72
    :cond_6
    :try_start_1
    const-string v2, "com.asus.pcsynclauncher.PCSYNC_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 74
    sget-boolean v2, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->DEBUG:Z

    if-ne v2, v5, :cond_7

    .line 76
    const-string v2, "UpdateLauncherIntentReceiver"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_7
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->mrunnable:Z

    if-nez v0, :cond_8

    .line 80
    monitor-exit p0

    goto :goto_0

    .line 82
    :cond_8
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->in_boot:Z

    if-ne v0, v5, :cond_9

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    const-string v2, "com.asus.UpdateLauncher.boot"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    :cond_9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->mrunnable:Z

    .line 89
    const-string v0, "REASON"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 95
    :cond_a
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 97
    sget-boolean v1, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->DEBUG:Z

    if-ne v1, v5, :cond_b

    .line 99
    const-string v1, "UpdateLauncherIntentReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_b
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->mrunnable:Z

    if-nez v0, :cond_c

    .line 103
    monitor-exit p0

    goto/16 :goto_0

    .line 105
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_d

    const-string v1, "enabled"

    const-string v2, "mtp"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "enabled"

    const-string v2, "mass_storage"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 110
    :cond_d
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->DEBUG:Z

    if-ne v0, v5, :cond_e

    .line 112
    const-string v0, "UpdateLauncherIntentReceiver"

    const-string v1, "mtp AND ums functions not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_e
    monitor-exit p0

    goto/16 :goto_0

    .line 116
    :cond_f
    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_11

    .line 118
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->DEBUG:Z

    if-ne v0, v5, :cond_10

    .line 120
    const-string v0, "UpdateLauncherIntentReceiver"

    const-string v1, "USB CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_10
    monitor-exit p0

    goto/16 :goto_0

    .line 124
    :cond_11
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->in_boot:Z

    if-ne v0, v5, :cond_12

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    const-string v1, "com.asus.UpdateLauncher.boot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    :cond_12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->mrunnable:Z

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    const-string v1, "REASON"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 138
    :cond_13
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 140
    sget-boolean v2, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->DEBUG:Z

    if-ne v2, v5, :cond_14

    .line 142
    const-string v2, "UpdateLauncherIntentReceiver"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_14
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->in_boot:Z

    if-nez v0, :cond_15

    .line 146
    const/4 v0, 0x1

    sput-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->in_boot:Z

    .line 148
    :cond_15
    const-string v0, "REASON"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 154
    :cond_16
    const-string v2, "com.asus.UpdateLauncher.notify"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 156
    sget-boolean v2, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->DEBUG:Z

    if-ne v2, v5, :cond_17

    .line 158
    const-string v2, "UpdateLauncherIntentReceiver"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_17
    const-string v0, "REASON"

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 166
    :cond_18
    const-string v2, "com.asus.UpdateLauncher.activity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 168
    sget-boolean v1, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->DEBUG:Z

    if-ne v1, v5, :cond_19

    .line 170
    const-string v1, "UpdateLauncherIntentReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_19
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->in_boot:Z

    if-ne v0, v5, :cond_1a

    .line 174
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->in_boot:Z

    .line 176
    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 177
    const/4 v0, 0x1

    sput-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->mrunnable:Z

    goto/16 :goto_1

    .line 179
    :cond_1b
    const-string v2, "com.asus.UpdateLauncher.setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    sget-boolean v2, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->DEBUG:Z

    if-ne v2, v5, :cond_1c

    .line 183
    const-string v2, "UpdateLauncherIntentReceiver"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1c
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->mrunnable:Z

    if-nez v0, :cond_1d

    .line 187
    monitor-exit p0

    goto/16 :goto_0

    .line 189
    :cond_1d
    sget-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->in_boot:Z

    if-ne v0, v5, :cond_1e

    .line 191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 192
    const-string v2, "com.asus.UpdateLauncher.boot"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    :cond_1e
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/UpdateLauncher/UpdateLauncherIntentReceiver;->mrunnable:Z

    .line 196
    const-string v0, "REASON"

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
