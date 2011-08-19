.class Lcom/android/server/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, action:Ljava/lang/String;
    const/4 v13, 0x0

    .line 333
    .local v13, queryRestart:Z
    const-string v16, "android.hardware.usb.action.USB_STATE"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3f

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 335
    .local v8, extras:Landroid/os/Bundle;
    const-string v16, "connected"

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 336
    .local v15, usbConnected:Z
    const-string v16, "enabled"

    const-string v17, "adb"

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 338
    .local v6, adbEnabled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v16, v0

    if-eqz v15, :cond_3c

    if-eqz v6, :cond_3c

    const/16 v17, 0x1

    :goto_38
    #calls: Lcom/android/server/NotificationManagerService;->updateAdbNotification(Z)V
    invoke-static/range {v16 .. v17}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;Z)V

    .line 374
    .end local v6           #adbEnabled:Z
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v15           #usbConnected:Z
    :cond_3b
    :goto_3b
    return-void

    .line 338
    .restart local v6       #adbEnabled:Z
    .restart local v8       #extras:Landroid/os/Bundle;
    .restart local v15       #usbConnected:Z
    :cond_3c
    const/16 v17, 0x0

    goto :goto_38

    .line 339
    .end local v6           #adbEnabled:Z
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v15           #usbConnected:Z
    :cond_3f
    const-string v16, "android.intent.action.PACKAGE_REMOVED"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6b

    const-string v16, "android.intent.action.PACKAGE_RESTARTED"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6b

    const-string v16, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6b

    const-string v16, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d5

    .line 343
    :cond_6b
    const/4 v11, 0x0

    .line 344
    .local v11, pkgList:[Ljava/lang/String;
    const-string v16, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_ad

    .line 345
    const-string v16, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 359
    :goto_81
    if-eqz v11, :cond_3b

    move-object v0, v11

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_3b

    .line 360
    move-object v7, v11

    .local v7, arr$:[Ljava/lang/String;
    array-length v10, v7

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_8c
    if-ge v9, v10, :cond_3b

    aget-object v12, v7, v9

    .line 361
    .local v12, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-nez v13, :cond_d2

    const/16 v19, 0x1

    :goto_9e
    move-object/from16 v0, v16

    move-object v1, v12

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 360
    add-int/lit8 v9, v9, 0x1

    goto :goto_8c

    .line 346
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #pkgName:Ljava/lang/String;
    :cond_ad
    if-eqz v13, :cond_ba

    .line 347
    const-string v16, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    goto :goto_81

    .line 349
    :cond_ba
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 350
    .local v14, uri:Landroid/net/Uri;
    if-eqz v14, :cond_3b

    .line 353
    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 354
    .restart local v12       #pkgName:Ljava/lang/String;
    if-eqz v12, :cond_3b

    .line 357
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object v11, v0

    .end local v11           #pkgList:[Ljava/lang/String;
    const/16 v16, 0x0

    aput-object v12, v11, v16

    .restart local v11       #pkgList:[Ljava/lang/String;
    goto :goto_81

    .line 361
    .end local v14           #uri:Landroid/net/Uri;
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    :cond_d2
    const/16 v19, 0x0

    goto :goto_9e

    .line 364
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #pkgList:[Ljava/lang/String;
    .end local v12           #pkgName:Ljava/lang/String;
    :cond_d5
    const-string v16, "android.intent.action.SCREEN_ON"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f6

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static/range {v16 .. v17}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_3b

    .line 367
    :cond_f6
    const-string v16, "android.intent.action.SCREEN_OFF"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_117

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static/range {v16 .. v17}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_3b

    .line 370
    :cond_117
    const-string v16, "android.intent.action.PHONE_STATE"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3b

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v16, v0

    const-string v17, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget-object v18, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    #setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static/range {v16 .. v17}, Lcom/android/server/NotificationManagerService;->access$1402(Lcom/android/server/NotificationManagerService;Z)Z

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_3b
.end method
