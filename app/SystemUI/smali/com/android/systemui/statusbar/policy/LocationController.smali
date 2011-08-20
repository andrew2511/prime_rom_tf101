.class public Lcom/android/systemui/statusbar/policy/LocationController;
.super Landroid/content/BroadcastReceiver;
.source "LocationController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationService:Landroid/app/INotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 59
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    .line 60
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 65
    .local v11, action:Ljava/lang/String;
    const-string v4, "enabled"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 70
    .local v12, enabled:Z
    const-string v4, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v12, :cond_0

    .line 72
    const v14, 0x10804e0

    .line 73
    .local v14, iconId:I
    const v16, 0x7f07002e

    .line 74
    .local v16, textResId:I
    const/16 v17, 0x1

    .line 87
    .local v17, visible:Z
    :goto_0
    if-eqz v17, :cond_2

    .line 88
    :try_start_0
    new-instance v13, Landroid/content/Intent;

    const-string v4, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v13, gpsIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v13, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v4

    move-object v2, v13

    move v3, v5

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 92
    .local v15, pendingIntent:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 100
    .local v9, n:Landroid/app/Notification;
    const/4 v4, 0x0

    iput-object v4, v9, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 101
    const/4 v4, 0x0

    iput-object v4, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 103
    const/4 v4, 0x1

    new-array v10, v4, [I

    .line 104
    .local v10, idOut:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x3d8d7

    sget v8, Lcom/android/internal/statusbar/StatusBarNotification;->PRIORITY_SYSTEM:I

    invoke-interface/range {v4 .. v10}, Landroid/app/INotificationManager;->enqueueNotificationWithTagPriority(Ljava/lang/String;Ljava/lang/String;IILandroid/app/Notification;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v9           #n:Landroid/app/Notification;
    .end local v10           #idOut:[I
    .end local v13           #gpsIntent:Landroid/content/Intent;
    .end local v15           #pendingIntent:Landroid/app/PendingIntent;
    :goto_1
    return-void

    .line 75
    .end local v14           #iconId:I
    .end local v16           #textResId:I
    .end local v17           #visible:Z
    :cond_0
    const-string v4, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v12, :cond_1

    .line 77
    const/16 v17, 0x0

    .line 78
    .restart local v17       #visible:Z
    const/16 v16, 0x0

    .restart local v16       #textResId:I
    move/from16 v14, v16

    .restart local v14       #iconId:I
    goto :goto_0

    .line 81
    .end local v14           #iconId:I
    .end local v16           #textResId:I
    .end local v17           #visible:Z
    :cond_1
    const v14, 0x7f0200a8

    .line 82
    .restart local v14       #iconId:I
    const v16, 0x7f07002d

    .line 83
    .restart local v16       #textResId:I
    const/16 v17, 0x1

    .restart local v17       #visible:Z
    goto :goto_0

    .line 112
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x3d8d7

    invoke-interface {v4, v5, v6}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v4

    goto :goto_1
.end method
