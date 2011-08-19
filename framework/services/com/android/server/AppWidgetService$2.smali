.class Lcom/android/server/AppWidgetService$2;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetService;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetService;)V
    .registers 2
    .parameter

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1397
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1399
    .local v4, action:Ljava/lang/String;
    const-string v17, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/AppWidgetService;->sendInitialBroadcasts()V

    .line 1474
    :cond_18
    :goto_18
    return-void

    .line 1401
    :cond_19
    const-string v17, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_bd

    .line 1402
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    .line 1403
    .local v15, revised:Ljava/util/Locale;
    if-eqz v15, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_18

    .line 1405
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1408
    :try_start_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1409
    .local v3, N:I
    const/16 v18, 0x1

    sub-int v9, v3, v18

    .local v9, i:I
    :goto_79
    if-ltz v9, :cond_ae

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppWidgetService$Provider;

    .line 1411
    .local v12, p:Lcom/android/server/AppWidgetService$Provider;
    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 1412
    .local v14, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1409
    add-int/lit8 v9, v9, -0x1

    goto :goto_79

    .line 1414
    .end local v12           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v14           #pkgName:Ljava/lang/String;
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1415
    monitor-exit v17

    goto/16 :goto_18

    .end local v3           #N:I
    .end local v9           #i:I
    :catchall_ba
    move-exception v18

    monitor-exit v17
    :try_end_bc
    .catchall {:try_start_65 .. :try_end_bc} :catchall_ba

    throw v18

    .line 1418
    .end local v15           #revised:Ljava/util/Locale;
    :cond_bd
    const/4 v5, 0x0

    .line 1419
    .local v5, added:Z
    const/4 v7, 0x0

    .line 1420
    .local v7, changed:Z
    const/4 v13, 0x0

    .line 1421
    .local v13, pkgList:[Ljava/lang/String;
    const-string v17, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11c

    .line 1422
    const-string v17, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1423
    const/4 v5, 0x1

    .line 1440
    :goto_d6
    if-eqz v13, :cond_18

    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_18

    .line 1443
    if-nez v5, :cond_e2

    if-eqz v7, :cond_183

    .line 1444
    :cond_e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1445
    :try_start_ef
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 1446
    .local v8, extras:Landroid/os/Bundle;
    if-nez v7, :cond_106

    if-eqz v8, :cond_15e

    const-string v18, "android.intent.extra.REPLACING"

    const/16 v19, 0x0

    move-object v0, v8

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_15e

    .line 1448
    :cond_106
    move-object v6, v13

    .local v6, arr$:[Ljava/lang/String;
    array-length v11, v6

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_109
    if-ge v10, v11, :cond_174

    aget-object v14, v6, v10

    .line 1450
    .restart local v14       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V
    :try_end_119
    .catchall {:try_start_ef .. :try_end_119} :catchall_180

    .line 1448
    add-int/lit8 v10, v10, 0x1

    goto :goto_109

    .line 1424
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v14           #pkgName:Ljava/lang/String;
    :cond_11c
    const-string v17, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_133

    .line 1425
    const-string v17, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1426
    const/4 v5, 0x0

    goto :goto_d6

    .line 1428
    :cond_133
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 1429
    .local v16, uri:Landroid/net/Uri;
    if-eqz v16, :cond_18

    .line 1432
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    .line 1433
    .restart local v14       #pkgName:Ljava/lang/String;
    if-eqz v14, :cond_18

    .line 1436
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    .end local v13           #pkgList:[Ljava/lang/String;
    const/16 v17, 0x0

    aput-object v14, v13, v17

    .line 1437
    .restart local v13       #pkgList:[Ljava/lang/String;
    const-string v17, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1438
    const-string v17, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto/16 :goto_d6

    .line 1454
    .end local v14           #pkgName:Ljava/lang/String;
    .end local v16           #uri:Landroid/net/Uri;
    .restart local v8       #extras:Landroid/os/Bundle;
    :cond_15e
    move-object v6, v13

    .restart local v6       #arr$:[Ljava/lang/String;
    :try_start_15f
    array-length v11, v6

    .restart local v11       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_161
    if-ge v10, v11, :cond_174

    aget-object v14, v6, v10

    .line 1455
    .restart local v14       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->addProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1454
    add-int/lit8 v10, v10, 0x1

    goto :goto_161

    .line 1458
    .end local v14           #pkgName:Ljava/lang/String;
    :cond_174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1459
    monitor-exit v17

    goto/16 :goto_18

    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :catchall_180
    move-exception v18

    monitor-exit v17
    :try_end_182
    .catchall {:try_start_15f .. :try_end_182} :catchall_180

    throw v18

    .line 1461
    :cond_183
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 1462
    .restart local v8       #extras:Landroid/os/Bundle;
    if-eqz v8, :cond_198

    const-string v17, "android.intent.extra.REPLACING"

    const/16 v18, 0x0

    move-object v0, v8

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_18

    .line 1465
    :cond_198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1466
    move-object v6, v13

    .restart local v6       #arr$:[Ljava/lang/String;
    :try_start_1a6
    array-length v11, v6

    .restart local v11       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_1a8
    if-ge v10, v11, :cond_1c4

    aget-object v14, v6, v10

    .line 1467
    .restart local v14       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->removeProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1466
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a8

    .line 1470
    .end local v14           #pkgName:Ljava/lang/String;
    :cond_1c4
    monitor-exit v17

    goto/16 :goto_18

    .end local v10           #i$:I
    .end local v11           #len$:I
    :catchall_1c7
    move-exception v18

    monitor-exit v17
    :try_end_1c9
    .catchall {:try_start_1a6 .. :try_end_1c9} :catchall_1c7

    throw v18
.end method
