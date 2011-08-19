.class public Lcom/android/vending/VendingNotificationManager;
.super Ljava/lang/Object;
.source "VendingNotificationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    const-class v1, Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 168
    const-string v1, "assetid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const v1, 0x10000004

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    return-object v0
.end method

.method private createFinskyIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "assetId"

    .prologue
    .line 205
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/vending/model/AbstractLocalAssetCache;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 206
    .local v0, asset:Lcom/android/vending/model/LocalAsset;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, packageName:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 217
    .end local v1           #packageName:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 212
    :cond_0
    const-string v2, "In createFinskyIntent, wasn\'t able to load LocalAsset for given assetId"

    invoke-static {v2}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 217
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method private createMessageClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "assetId"
    .parameter "title"
    .parameter "message"
    .parameter "toFinsky"

    .prologue
    .line 178
    if-eqz p5, :cond_0

    invoke-direct {p0, p2}, Lcom/android/vending/VendingNotificationManager;->createFinskyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    .line 182
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    const-string v1, "message_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "message_body"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const v1, 0x10000004

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    return-object v0

    .line 178
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/vending/VendingNotificationManager;->createMyAppsIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private createMyAppsIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    const-class v1, Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 193
    const-string v1, "assetid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/vending/api/LocalAssetDatabase;->getLocalAsset(Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_0

    .line 198
    const-string v2, "asset_package"

    invoke-virtual {v1}, Lcom/android/vending/model/LocalAssetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bundleAssetNotifications(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;II)V
    .locals 16
    .parameter "ctx"
    .parameter
    .parameter "clickIntent"
    .parameter "titleResId"
    .parameter "messageResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, assetIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "notification"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 132
    .local v9, mgr:Landroid/app/NotificationManager;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    .line 133
    .local v10, number:I
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 134
    .local v12, title:Ljava/lang/String;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, message:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    const/high16 v14, 0x4000

    move-object/from16 v0, p1

    move v1, v13

    move-object/from16 v2, p3

    move v3, v14

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 139
    .local v11, pendingIntent:Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification;

    const v13, 0x7f02007e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v6, v13, v12, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 140
    .local v6, bulk:Landroid/app/Notification;
    iput v10, v6, Landroid/app/Notification;->number:I

    .line 141
    iget v13, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v6, Landroid/app/Notification;->flags:I

    .line 142
    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v8

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-virtual {v9, v13, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 145
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 146
    .local v5, assetId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/VendingNotificationManager;->getNotificationIdForAsset(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 148
    .end local v5           #assetId:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected getNotificationIdForAsset(Ljava/lang/String;)I
    .locals 1
    .parameter "assetId"

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public hideNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "assetId"

    .prologue
    .line 114
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 116
    .local v0, mgr:Landroid/app/NotificationManager;
    invoke-virtual {p0, p2}, Lcom/android/vending/VendingNotificationManager;->getNotificationIdForAsset(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 117
    return-void
.end method

.method public showAssetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "assetId"
    .parameter "notificationStatus"
    .parameter "notificationTitle"
    .parameter "notificationMessage"
    .parameter "dialogTitle"
    .parameter "dialogMessage"

    .prologue
    const/4 v7, 0x0

    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/android/vending/VendingNotificationManager;->showAssetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 30
    return-void
.end method

.method public showAssetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9
    .parameter "assetId"
    .parameter "notificationStatus"
    .parameter "notificationTitle"
    .parameter "notificationMessage"
    .parameter "dialogTitle"
    .parameter "dialogMessage"
    .parameter "showOnHomeScreen"
    .parameter "toFinsky"

    .prologue
    .line 47
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v1

    .line 48
    .local v1, application:Lcom/android/vending/VendingApplication;
    invoke-virtual {v1, p1}, Lcom/android/vending/VendingApplication;->getAssetInfoActivity(Ljava/lang/String;)Lcom/android/vending/AssetInfoActivity;

    move-result-object v8

    .line 49
    .local v8, assetInfoActivity:Lcom/android/vending/AssetInfoActivity;
    if-nez p7, :cond_0

    if-eqz v8, :cond_0

    .line 50
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/vending/VendingNotificationManager;->hideNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/android/vending/VendingNotificationManager$1;

    invoke-direct {v0, p0, v8, p5, p6}, Lcom/android/vending/VendingNotificationManager$1;-><init>(Lcom/android/vending/VendingNotificationManager;Lcom/android/vending/AssetInfoActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/android/vending/AssetInfoActivity;->postRunnable(Ljava/lang/Runnable;)V

    .line 62
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p6

    move/from16 v5, p8

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/android/vending/VendingNotificationManager;->createMessageClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 59
    .local v2, clickIntent:Landroid/content/Intent;
    const v7, 0x108008a

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/vending/VendingNotificationManager;->showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .parameter "ctx"
    .parameter "clickIntent"
    .parameter "assetId"
    .parameter "statusText"
    .parameter "title"
    .parameter "message"
    .parameter "icon"

    .prologue
    .line 78
    if-nez p2, :cond_0

    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/vending/VendingNotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 86
    :cond_0
    if-nez p3, :cond_1

    .line 87
    const-string v9, ""

    .line 93
    .local v9, pendingIntentIdStr:Ljava/lang/String;
    :goto_0
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/high16 v11, 0x4000

    move-object v0, p1

    move v1, v10

    move-object/from16 v2, p2

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 95
    .local v8, pendingIntent:Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v0, v6

    move/from16 v1, p7

    move-object/from16 v2, p4

    move-wide v3, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 96
    .local v6, notification:Landroid/app/Notification;
    iget v10, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v6, Landroid/app/Notification;->flags:I

    .line 97
    move-object v0, v6

    move-object v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 98
    const-string v10, "notification"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 100
    .local v5, mgr:Landroid/app/NotificationManager;
    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/vending/VendingNotificationManager;->getNotificationIdForAsset(Ljava/lang/String;)I

    move-result v7

    .line 101
    .local v7, notificationId:I
    move-object v0, v6

    move-object v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 102
    invoke-virtual {v5, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 103
    const-string v10, "Showing notification: [AssetID=%s, NotificationID=%d, Title=%s, Message=%s]"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p3, v11, v12

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object p5, v11, v12

    const/4 v12, 0x3

    aput-object p6, v11, v12

    invoke-static {v10, v11}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-void

    .line 88
    .end local v5           #mgr:Landroid/app/NotificationManager;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v7           #notificationId:I
    .end local v8           #pendingIntent:Landroid/app/PendingIntent;
    .end local v9           #pendingIntentIdStr:Ljava/lang/String;
    :cond_1
    const-string v10, "message_title"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 89
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v10

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "message_title"

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #pendingIntentIdStr:Ljava/lang/String;
    goto/16 :goto_0

    .line 91
    .end local v9           #pendingIntentIdStr:Ljava/lang/String;
    :cond_2
    move-object/from16 v9, p3

    .restart local v9       #pendingIntentIdStr:Ljava/lang/String;
    goto/16 :goto_0
.end method
