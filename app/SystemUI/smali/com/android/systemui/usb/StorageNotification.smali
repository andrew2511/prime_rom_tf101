.class public Lcom/android/systemui/usb/StorageNotification;
.super Landroid/os/storage/StorageEventListener;
.source "StorageNotification.java"


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUmsAvailable:Z

.field private mUsbStorageNotification:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 70
    const-string v2, "storage"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 71
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v0

    .line 72
    .local v0, connected:Z
    const-string v2, "StorageNotification"

    const-string v3, "Startup with UMS connection %s (media state %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SystemUI StorageNotification"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, thr:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 77
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChanged(Z)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/StorageNotification;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    const-string v0, "StorageNotification"

    const-string v1, "Media {%s} state changed from {%s} -> {%s}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v0, "shared"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 139
    const v1, 0x1040383

    const v2, 0x1040384

    const v3, 0x108008a

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 252
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v0, "checking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const v1, 0x1040398

    const v2, 0x1040399

    const v3, 0x10800ab

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0

    .line 153
    :cond_1
    const-string v0, "mounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0

    .line 160
    :cond_2
    const-string v0, "unmounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 167
    const-string v0, "shared"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0

    .line 179
    :cond_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    const v1, 0x10403a0

    const v2, 0x10403a1

    const v3, 0x108007a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 189
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0

    .line 187
    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 196
    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 199
    :cond_6
    const-string v0, "nofs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 205
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 208
    const v1, 0x104039a

    const v2, 0x104039b

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 212
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 213
    :cond_7
    const-string v0, "unmountable"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 222
    const v1, 0x104039c

    const v2, 0x104039d

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 226
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 227
    :cond_8
    const-string v0, "removed"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 232
    const v1, 0x10403a2

    const v2, 0x10403a3

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 238
    :cond_9
    const-string v0, "bad_removal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 243
    const v1, 0x104039e

    const v2, 0x104039f

    const v3, 0x108008a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 250
    :cond_a
    const-string v0, "StorageNotification"

    const-string v1, "Ignoring unknown state {%s}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 6
    .parameter "connected"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    .line 101
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, st:Ljava/lang/String;
    const-string v1, "StorageNotification"

    const-string v2, "UMS connection changed to %s (media state %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-eqz p1, :cond_1

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    const/4 p1, 0x0

    .line 112
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 113
    return-void
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 9
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "visible"
    .parameter "dismissable"
    .parameter "pi"

    .prologue
    .line 360
    monitor-enter p0

    if-nez p4, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 414
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 364
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 367
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-eqz v3, :cond_0

    .line 371
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v6, :cond_2

    if-eqz p4, :cond_2

    .line 376
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v2, v6, Landroid/app/Notification;->icon:I

    .line 377
    .local v2, notificationId:I
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 380
    .end local v2           #notificationId:I
    :cond_2
    if-eqz p4, :cond_5

    .line 381
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 382
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 383
    .local v5, title:Ljava/lang/CharSequence;
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 385
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v6, :cond_3

    .line 386
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 387
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 390
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 392
    if-eqz p5, :cond_6

    .line 393
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 398
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 399
    if-nez p6, :cond_4

    .line 400
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 401
    .local v0, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 404
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput p3, v6, Landroid/app/Notification;->icon:I

    .line 405
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, p6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 408
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v2, v6, Landroid/app/Notification;->icon:I

    .line 409
    .restart local v2       #notificationId:I
    if-eqz p4, :cond_7

    .line 410
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 360
    .end local v2           #notificationId:I
    .end local v3           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 395
    .restart local v1       #message:Ljava/lang/CharSequence;
    .restart local v3       #notificationManager:Landroid/app/NotificationManager;
    .restart local v4       #r:Landroid/content/res/Resources;
    .restart local v5       #title:Ljava/lang/CharSequence;
    :cond_6
    :try_start_2
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 412
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    .restart local v2       #notificationId:I
    :cond_7
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 16
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "sound"
    .parameter "visible"
    .parameter "pi"

    .prologue
    .line 281
    monitor-enter p0

    if-nez p5, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_1

    .line 343
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 285
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v12, v0

    const-string v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 288
    .local v9, notificationManager:Landroid/app/NotificationManager;
    if-eqz v9, :cond_0

    .line 292
    if-eqz p5, :cond_4

    .line 293
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 294
    .local v10, r:Landroid/content/res/Resources;
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 295
    .local v11, title:Ljava/lang/CharSequence;
    move-object v0, v10

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 297
    .local v7, message:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    if-nez v12, :cond_2

    .line 298
    new-instance v12, Landroid/app/Notification;

    invoke-direct {v12}, Landroid/app/Notification;-><init>()V

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    move/from16 v0, p3

    move-object v1, v12

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    const-wide/16 v13, 0x0

    iput-wide v13, v12, Landroid/app/Notification;->when:J

    .line 303
    :cond_2
    if-eqz p4, :cond_5

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iget v13, v12, Landroid/app/Notification;->defaults:I

    or-int/lit8 v13, v13, 0x1

    iput v13, v12, Landroid/app/Notification;->defaults:I

    .line 309
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    const/4 v13, 0x2

    iput v13, v12, Landroid/app/Notification;->flags:I

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iput-object v11, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 312
    if-nez p6, :cond_3

    .line 313
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v6, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 317
    .end local v6           #intent:Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v13, v0

    move-object v0, v12

    move-object v1, v13

    move-object v2, v11

    move-object v3, v7

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 318
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "adb_enabled"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    move v5, v12

    .line 323
    .local v5, adbOn:Z
    :goto_2
    if-nez v5, :cond_4

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    move-object/from16 v0, p6

    move-object v1, v12

    iput-object v0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 337
    .end local v5           #adbOn:Z
    .end local v7           #message:Ljava/lang/CharSequence;
    .end local v10           #r:Landroid/content/res/Resources;
    .end local v11           #title:Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iget v8, v12, Landroid/app/Notification;->icon:I

    .line 338
    .local v8, notificationId:I
    if-eqz p5, :cond_7

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    invoke-virtual {v9, v8, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 281
    .end local v8           #notificationId:I
    .end local v9           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 306
    .restart local v7       #message:Ljava/lang/CharSequence;
    .restart local v9       #notificationManager:Landroid/app/NotificationManager;
    .restart local v10       #r:Landroid/content/res/Resources;
    .restart local v11       #title:Ljava/lang/CharSequence;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iget v13, v12, Landroid/app/Notification;->defaults:I

    and-int/lit8 v13, v13, -0x2

    iput v13, v12, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 318
    :cond_6
    const/4 v12, 0x0

    move v5, v12

    goto :goto_2

    .line 341
    .end local v7           #message:Ljava/lang/CharSequence;
    .end local v10           #r:Landroid/content/res/Resources;
    .end local v11           #title:Ljava/lang/CharSequence;
    .restart local v8       #notificationId:I
    :cond_7
    invoke-virtual {v9, v8}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/StorageNotification$1;-><init>(Lcom/android/systemui/usb/StorageNotification;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 259
    if-eqz p1, :cond_0

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 262
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 264
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 265
    const v1, 0x1040381

    const v2, 0x1040382

    const v3, 0x10804d9

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    const/4 v9, 0x0

    move-object v3, p0

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
