.class public Lcom/android/systemui/usb/ExternalStorageNotification;
.super Landroid/os/storage/StorageEventListener;
.source "ExternalStorageNotification.java"


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mMountService:Landroid/os/storage/IMountService;

.field private umtReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 38
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/usb/ExternalStorageNotification;->mMountService:Landroid/os/storage/IMountService;

    .line 40
    new-instance v2, Lcom/android/systemui/usb/ExternalStorageNotification$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/usb/ExternalStorageNotification$1;-><init>(Lcom/android/systemui/usb/ExternalStorageNotification;)V

    iput-object v2, p0, Lcom/android/systemui/usb/ExternalStorageNotification;->umtReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/usb/ExternalStorageNotification;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.systemui.usb.ACTION_UNMOUNT_EPAD_STORAGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v2, "com.android.systemui.usb.ACTION_UNMOUNT_EPAD_STORAGE_SUCCESS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v2, "com.android.systemui.usb.ACTION_UNMOUNT_EPAD_STORAGE_ERROR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/android/systemui/usb/ExternalStorageNotification;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/usb/ExternalStorageNotification;->umtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SystemUI StorageNotification"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, thr:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/usb/ExternalStorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/ExternalStorageNotification;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/usb/ExternalStorageNotification;->doUnmount(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/ExternalStorageNotification;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/usb/ExternalStorageNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/ExternalStorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/ExternalStorageNotification;->onExternalStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doUnmount(Ljava/lang/String;Z)V
    .locals 4
    .parameter "path"
    .parameter "force"

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/systemui/usb/ExternalStorageNotification;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 267
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ExternalStorageNotification"

    const-string v3, "unmount failed. : Is MountService running ?"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/usb/ExternalStorageNotification;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 275
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 276
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 277
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/usb/ExternalStorageNotification;->mMountService:Landroid/os/storage/IMountService;

    .line 282
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/usb/ExternalStorageNotification;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 279
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "ExternalStorageNotification"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private onExternalStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 108
    const v5, 0x7f070031

    .line 109
    .local v5, tickerId:I
    const v6, 0x7f070036

    .line 110
    .local v6, titleId:I
    const/4 v7, 0x0

    .line 111
    .local v7, messageId:I
    const/4 v8, 0x0

    .line 113
    .local v8, iconId:I
    new-instance v22, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v22, fmIntent:Landroid/content/Intent;
    const-string v4, "com.asus.filemanager"

    const-string v9, "com.asus.filemanager2.activity.FileManagerActivity"

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/high16 v4, 0x2000

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    new-instance v23, Landroid/content/Intent;

    const-string v4, "com.android.systemui.usb.ACTION_UNMOUNT_EPAD_STORAGE"

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v23, umtIntent:Landroid/content/Intent;
    const-string v4, "unmout_path"

    move-object/from16 v0, v23

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    sget-object v4, Landroid/os/Environment;->MOUNT_POINT_MICROSD:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    const v7, 0x7f070032

    .line 123
    const v8, 0x7f02001e

    .line 124
    const-string v4, "path"

    const-string v9, "MicroSD"

    invoke-static {v9}, Landroid/os/Environment;->getEpadExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/ExternalStorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/high16 v9, 0x800

    move-object v0, v4

    move v1, v8

    move-object/from16 v2, v22

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 155
    .local v11, fmPI:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/ExternalStorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/high16 v9, 0x800

    move-object v0, v4

    move v1, v8

    move-object/from16 v2, v23

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 158
    .local v12, umtPI:Landroid/app/PendingIntent;
    const-string v4, "checking"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 159
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/systemui/usb/ExternalStorageNotification;->setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 176
    .end local v5           #tickerId:I
    .end local v6           #titleId:I
    .end local v11           #fmPI:Landroid/app/PendingIntent;
    .end local v12           #umtPI:Landroid/app/PendingIntent;
    :cond_0
    :goto_1
    return-void

    .line 128
    .restart local v5       #tickerId:I
    .restart local v6       #titleId:I
    :cond_1
    sget-object v4, Landroid/os/Environment;->MOUNT_POINT_USBDISK1:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    const v7, 0x7f070033

    .line 130
    const v8, 0x7f020020

    .line 131
    const-string v4, "path"

    const-string v9, "USBdisk1"

    invoke-static {v9}, Landroid/os/Environment;->getEpadExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 135
    :cond_2
    sget-object v4, Landroid/os/Environment;->MOUNT_POINT_USBDISK2:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    const v7, 0x7f070034

    .line 137
    const v8, 0x7f020021

    .line 138
    const-string v4, "path"

    const-string v9, "USBdisk2"

    invoke-static {v9}, Landroid/os/Environment;->getEpadExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 142
    :cond_3
    sget-object v4, Landroid/os/Environment;->MOUNT_POINT_SDREADER:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    const v7, 0x7f070035

    .line 144
    const v8, 0x7f02001f

    .line 145
    const-string v4, "path"

    const-string v9, "SD"

    invoke-static {v9}, Landroid/os/Environment;->getEpadExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 161
    .restart local v11       #fmPI:Landroid/app/PendingIntent;
    .restart local v12       #umtPI:Landroid/app/PendingIntent;
    :cond_4
    const-string v4, "mounted"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 164
    const-string v4, "unmounted"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 165
    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v13, p0

    move/from16 v17, v8

    invoke-direct/range {v13 .. v21}, Lcom/android/systemui/usb/ExternalStorageNotification;->setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 167
    :cond_5
    const-string v4, "removed"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 168
    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v13, p0

    move/from16 v17, v8

    invoke-direct/range {v13 .. v21}, Lcom/android/systemui/usb/ExternalStorageNotification;->setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 170
    :cond_6
    const-string v4, "bad_removal"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 171
    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v13, p0

    move/from16 v17, v8

    invoke-direct/range {v13 .. v21}, Lcom/android/systemui/usb/ExternalStorageNotification;->setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 174
    :cond_7
    const-string v4, "ExternalStorageNotification"

    const-string v5, "Ignoring unknown state {%s}"

    .end local v5           #tickerId:I
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .end local v6           #titleId:I
    const/4 v9, 0x0

    aput-object p3, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private declared-synchronized setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 13
    .parameter "tickerId"
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "visible"
    .parameter "dismissable"
    .parameter "fmPI"
    .parameter "umtPI"

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 188
    .local v4, mediaStorageNotification:Landroid/app/Notification;
    const-wide/16 v11, 0x0

    iput-wide v11, v4, Landroid/app/Notification;->when:J

    .line 189
    move/from16 v0, p4

    move-object v1, v4

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 191
    iget-object v11, p0, Lcom/android/systemui/usb/ExternalStorageNotification;->mContext:Landroid/content/Context;

    const-string v12, "notification"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 194
    .local v7, notificationManager:Landroid/app/NotificationManager;
    if-nez v7, :cond_0

    .line 195
    const-string v11, "ExternalStorageNotification"

    const-string v12, "NotificationManager is null"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :goto_0
    monitor-exit p0

    return-void

    .line 199
    :cond_0
    if-eqz v4, :cond_1

    if-eqz p5, :cond_1

    .line 203
    :try_start_1
    move/from16 v0, p4

    move-object v1, v4

    iput v0, v1, Landroid/app/Notification;->icon:I

    move/from16 v6, p4

    .line 205
    .local v6, notificationId:I
    invoke-virtual {v7, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 208
    .end local v6           #notificationId:I
    :cond_1
    if-eqz p5, :cond_5

    .line 209
    iget-object v11, p0, Lcom/android/systemui/usb/ExternalStorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 210
    .local v8, r:Landroid/content/res/Resources;
    const/4 v9, 0x0

    .line 211
    .local v9, ticker:Ljava/lang/CharSequence;
    const/4 v10, 0x0

    .line 212
    .local v10, title:Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 214
    .local v5, message:Ljava/lang/CharSequence;
    const/4 v11, -0x1

    if-eq p1, v11, :cond_2

    .line 215
    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 216
    :cond_2
    const/4 v11, -0x1

    if-eq p2, v11, :cond_3

    .line 217
    invoke-virtual {v8, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 218
    :cond_3
    const/4 v11, -0x1

    move/from16 v0, p3

    move v1, v11

    if-eq v0, v1, :cond_4

    .line 219
    move-object v0, v8

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 221
    :cond_4
    iget v11, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v11, v11, -0x2

    iput v11, v4, Landroid/app/Notification;->defaults:I

    .line 223
    if-eqz p6, :cond_6

    .line 224
    const/16 v11, 0x10

    iput v11, v4, Landroid/app/Notification;->flags:I

    .line 229
    :goto_1
    iput-object v9, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 231
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v11, p0, Lcom/android/systemui/usb/ExternalStorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f030007

    invoke-direct {v3, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 235
    .local v3, contentView:Landroid/widget/RemoteViews;
    const v11, 0x7f0b0006

    move-object v0, v3

    move v1, v11

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 236
    const v11, 0x7f0b0029

    invoke-virtual {v3, v11, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 237
    const v11, 0x7f0b002a

    invoke-virtual {v3, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 239
    const v11, 0x7f0b002b

    const v12, 0x7f020018

    invoke-virtual {v3, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 241
    const v11, 0x7f0b002b

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 243
    const v11, 0x7f0b002c

    const v12, 0x7f020041

    invoke-virtual {v3, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 245
    const v11, 0x7f0b002c

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 247
    iput-object v3, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 253
    .end local v3           #contentView:Landroid/widget/RemoteViews;
    .end local v5           #message:Ljava/lang/CharSequence;
    .end local v8           #r:Landroid/content/res/Resources;
    .end local v9           #ticker:Ljava/lang/CharSequence;
    .end local v10           #title:Ljava/lang/CharSequence;
    :cond_5
    iget v6, v4, Landroid/app/Notification;->icon:I

    .line 255
    .restart local v6       #notificationId:I
    if-eqz p5, :cond_7

    .line 256
    invoke-virtual {v7, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 187
    .end local v4           #mediaStorageNotification:Landroid/app/Notification;
    .end local v6           #notificationId:I
    .end local v7           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 226
    .restart local v4       #mediaStorageNotification:Landroid/app/Notification;
    .restart local v5       #message:Ljava/lang/CharSequence;
    .restart local v7       #notificationManager:Landroid/app/NotificationManager;
    .restart local v8       #r:Landroid/content/res/Resources;
    .restart local v9       #ticker:Ljava/lang/CharSequence;
    .restart local v10       #title:Ljava/lang/CharSequence;
    :cond_6
    const/4 v11, 0x2

    :try_start_2
    iput v11, v4, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 258
    .end local v5           #message:Ljava/lang/CharSequence;
    .end local v8           #r:Landroid/content/res/Resources;
    .end local v9           #ticker:Ljava/lang/CharSequence;
    .end local v10           #title:Ljava/lang/CharSequence;
    .restart local v6       #notificationId:I
    :cond_7
    invoke-virtual {v7, v6}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 95
    const-string v0, "ExternalStorageNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExternalStorageStateChanged : path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/systemui/usb/ExternalStorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/ExternalStorageNotification$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/usb/ExternalStorageNotification$2;-><init>(Lcom/android/systemui/usb/ExternalStorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method
