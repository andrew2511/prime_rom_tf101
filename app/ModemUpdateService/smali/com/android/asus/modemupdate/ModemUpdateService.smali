.class public Lcom/android/asus/modemupdate/ModemUpdateService;
.super Landroid/app/Service;
.source "ModemUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/asus/modemupdate/ModemUpdateService$Reciver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/asus/modemupdate/ModemUpdateService;


# instance fields
.field private BATTERY_UPDATE_THRESHOLD:I

.field final CMD_DELETE_FILE:I

.field final CMD_START_UPDATE:I

.field final NOTIFICATION_ID:I

.field final SUPER8_PATH_IN_ANDROID:Ljava/lang/String;

.field final SUPER8_PATH_IN_RECOVERY:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field private mACPowerState:I

.field private mBatteryState:I

.field private mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field private mNM:Landroid/app/NotificationManager;

.field private mPM:Landroid/os/PowerManager;

.field mReciver:Landroid/content/BroadcastReceiver;

.field private mUpdateState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    const-string v0, "ModemUpdateService"

    iput-object v0, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "/data/media/super8/"

    iput-object v0, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->SUPER8_PATH_IN_RECOVERY:Ljava/lang/String;

    .line 28
    const-string v0, "/sdcard/super8/"

    iput-object v0, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->SUPER8_PATH_IN_ANDROID:Ljava/lang/String;

    .line 30
    iput v2, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->CMD_START_UPDATE:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->CMD_DELETE_FILE:I

    .line 37
    iput-object p0, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mContext:Landroid/content/Context;

    .line 41
    iput v1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mACPowerState:I

    .line 42
    iput v1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mBatteryState:I

    .line 44
    iput v2, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mUpdateState:I

    .line 45
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->BATTERY_UPDATE_THRESHOLD:I

    .line 55
    const v0, 0x8a18b

    iput v0, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->NOTIFICATION_ID:I

    .line 194
    return-void
.end method

.method static synthetic access$002(Lcom/android/asus/modemupdate/ModemUpdateService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mACPowerState:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/asus/modemupdate/ModemUpdateService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mBatteryState:I

    return p1
.end method

.method static getDefault()Lcom/android/asus/modemupdate/ModemUpdateService;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/android/asus/modemupdate/ModemUpdateService;->sInstance:Lcom/android/asus/modemupdate/ModemUpdateService;

    return-object v0
.end method

.method private getResult()I
    .locals 7

    .prologue
    .line 113
    const-string v0, "0"

    .line 115
    .local v0, UPDATE_OK_STR:Ljava/lang/String;
    const-string v4, "/cache/recovery/modem_update_status"

    .line 116
    .local v4, status_loc:Ljava/lang/String;
    const/4 v2, 0x0

    .line 117
    .local v2, error_str:Ljava/lang/String;
    const/4 v1, -0x1

    .line 119
    .local v1, error_code:I
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 120
    .local v3, in:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 122
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 123
    .local v5, str_len:I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    const/4 v1, 0x0

    .line 130
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 133
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v5           #str_len:I
    :goto_0
    return v1

    .line 127
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v5       #str_len:I
    :cond_1
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v5           #str_len:I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private notifyDone(Ljava/lang/String;)V
    .locals 5
    .parameter "result_string"

    .prologue
    const/4 v4, 0x0

    .line 171
    new-instance v0, Landroid/app/Notification;

    const/high16 v1, 0x7f02

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 172
    .local v0, n:Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 173
    iget-object v1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mNM:Landroid/app/NotificationManager;

    const v2, 0x8a18c

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 174
    return-void
.end method

.method private notifyUpdate()V
    .locals 7

    .prologue
    const v6, 0x7f040003

    const/4 v5, 0x0

    .line 153
    const/high16 v0, 0x7f02

    .line 154
    invoke-virtual {p0, v6}, Lcom/android/asus/modemupdate/ModemUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 157
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 158
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 160
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/asus/modemupdate/UpdateAlertDialog;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    iget-object v1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/asus/modemupdate/ModemUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040004

    invoke-virtual {p0, v4}, Lcom/android/asus/modemupdate/ModemUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 166
    const v0, 0x8a18b

    invoke-virtual {p0, v0, v2}, Lcom/android/asus/modemupdate/ModemUpdateService;->startForeground(ILandroid/app/Notification;)V

    .line 167
    return-void
.end method

.method private showResult()V
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, error_code:I
    const-string v1, ""

    .line 140
    .local v1, error_str:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/asus/modemupdate/ModemUpdateService;->getResult()I

    move-result v0

    .line 142
    if-nez v0, :cond_0

    .line 143
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/android/asus/modemupdate/ModemUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/asus/modemupdate/ModemUpdateService;->notifyDone(Ljava/lang/String;)V

    .line 148
    return-void

    .line 145
    :cond_0
    const v2, 0x7f040001

    invoke-virtual {p0, v2}, Lcom/android/asus/modemupdate/ModemUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private writeResult(Ljava/lang/String;)V
    .locals 6
    .parameter "resut"

    .prologue
    .line 180
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v4, "/cache/recovery"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, CACHE_RECOVERY_DIR:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v4, "modem_update_status"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    .local v1, UPDATE_STATUS_FILE:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 184
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .local v2, command:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 192
    .end local v0           #CACHE_RECOVERY_DIR:Ljava/io/File;
    .end local v1           #UPDATE_STATUS_FILE:Ljava/io/File;
    .end local v2           #command:Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 186
    .restart local v0       #CACHE_RECOVERY_DIR:Ljava/io/File;
    .restart local v1       #UPDATE_STATUS_FILE:Ljava/io/File;
    .restart local v2       #command:Ljava/io/FileWriter;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 188
    .end local v0           #CACHE_RECOVERY_DIR:Ljava/io/File;
    .end local v1           #UPDATE_STATUS_FILE:Ljava/io/File;
    .end local v2           #command:Ljava/io/FileWriter;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 190
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "ModemUpdateService"

    const-string v5, "writeResult error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isAllow()V
    .locals 4

    .prologue
    const/high16 v3, 0x1000

    .line 234
    iget v0, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mBatteryState:I

    iget v1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->BATTERY_UPDATE_THRESHOLD:I

    if-lt v0, v1, :cond_0

    .line 236
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/asus/modemupdate/WarningAlertDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 246
    :goto_0
    return-void

    .line 242
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/asus/modemupdate/BatteryLowAlertDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    iget-object v1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "ModemUpdateService"

    const-string v1, "Update Service Started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sput-object p0, Lcom/android/asus/modemupdate/ModemUpdateService;->sInstance:Lcom/android/asus/modemupdate/ModemUpdateService;

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "ModemUpdateService"

    const-string v1, "Update Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x1

    .line 72
    const-string v0, "ModemUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ModemUpdateService] Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-nez p1, :cond_0

    move v0, v3

    .line 103
    :goto_0
    return v0

    .line 77
    :cond_0
    const-string v0, "file_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mFileName:Ljava/lang/String;

    .line 78
    const-string v0, "ModemUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recevied file_name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/asus/modemupdate/ModemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mNM:Landroid/app/NotificationManager;

    .line 80
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/asus/modemupdate/ModemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mPM:Landroid/os/PowerManager;

    .line 81
    new-instance v0, Lcom/android/asus/modemupdate/ModemUpdateService$Reciver;

    invoke-direct {v0, p0}, Lcom/android/asus/modemupdate/ModemUpdateService$Reciver;-><init>(Lcom/android/asus/modemupdate/ModemUpdateService;)V

    iput-object v0, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mReciver:Landroid/content/BroadcastReceiver;

    .line 84
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p0, v0}, Lcom/android/asus/modemupdate/ModemUpdateService;->register2reciver(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mFileName:Ljava/lang/String;

    const-string v1, "has_result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/android/asus/modemupdate/ModemUpdateService;->showResult()V

    :goto_1
    move v0, v3

    .line 103
    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mFileName:Ljava/lang/String;

    const-string v1, "write_fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    const-string v0, "401"

    invoke-direct {p0, v0}, Lcom/android/asus/modemupdate/ModemUpdateService;->writeResult(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_2
    invoke-direct {p0}, Lcom/android/asus/modemupdate/ModemUpdateService;->notifyUpdate()V

    goto :goto_1
.end method

.method register2reciver(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 280
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 282
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 252
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/cache/recovery"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, UPDATELAUNCHER_DIR:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "command"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    .local v0, UPDATELAUNCHER_COMMAND_FILE:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 255
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 256
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .local v2, command:Ljava/io/FileWriter;
    :try_start_1
    const-string v4, "ModemUpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 262
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 275
    .end local v0           #UPDATELAUNCHER_COMMAND_FILE:Ljava/io/File;
    .end local v1           #UPDATELAUNCHER_DIR:Ljava/io/File;
    .end local v2           #command:Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 266
    .restart local v0       #UPDATELAUNCHER_COMMAND_FILE:Ljava/io/File;
    .restart local v1       #UPDATELAUNCHER_DIR:Ljava/io/File;
    .restart local v2       #command:Ljava/io/FileWriter;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 269
    .end local v0           #UPDATELAUNCHER_COMMAND_FILE:Ljava/io/File;
    .end local v1           #UPDATELAUNCHER_DIR:Ljava/io/File;
    .end local v2           #command:Ljava/io/FileWriter;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 272
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "ModemUpdateService"

    const-string v5, "setPath error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startUpdate()V
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mFileName:Ljava/lang/String;

    const-string v2, "/sdcard/super8/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--update_modem=/data/media/super8/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mFileName:Ljava/lang/String;

    const-string v3, "/sdcard/super8/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/asus/modemupdate/ModemUpdateService;->setPath(Ljava/lang/String;)V

    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/android/asus/modemupdate/ModemUpdateService;->stopSelf()V

    .line 228
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/asus/modemupdate/ModemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 229
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 230
    return-void

    .line 225
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--update_modem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/asus/modemupdate/ModemUpdateService;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/asus/modemupdate/ModemUpdateService;->setPath(Ljava/lang/String;)V

    goto :goto_0
.end method
