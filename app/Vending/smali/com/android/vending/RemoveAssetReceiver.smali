.class public Lcom/android/vending/RemoveAssetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoveAssetReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/vending/RemoveAssetReceiver;->setResultCode(I)V

    .line 38
    const-string v4, "google.com"

    const-string v5, "from"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    const-string v5, "REMOVE_ASSET"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string v4, "assetid"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 45
    .local v14, assetId:Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 48
    const-string v4, "asset_name"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, assetName:Ljava/lang/String;
    const-string v4, "true"

    const-string v5, "asset_malicious"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 52
    .local v18, isConsideredMalicious:Z
    invoke-static {v14}, Lcom/android/vending/model/LocalAsset;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v13

    .line 53
    .local v13, asset:Lcom/android/vending/model/LocalAsset;
    if-eqz v13, :cond_0

    .line 57
    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v13}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 60
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;

    move-result-object v3

    .line 62
    .local v3, notificationMgr:Lcom/android/vending/VendingNotificationManager;
    const v4, 0x7f070050

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, notificationStatus:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 65
    const v4, 0x7f070051

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 67
    .local v7, notificationMessage:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v6

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/vending/AlertUtil;->getAssetRemovedMessage(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, dialogMessage:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "REMOVED_MESSAGE"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v8, v6

    invoke-virtual/range {v3 .. v11}, Lcom/android/vending/VendingNotificationManager;->showAssetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 83
    .end local v3           #notificationMgr:Lcom/android/vending/VendingNotificationManager;
    .end local v5           #notificationStatus:Ljava/lang/String;
    .end local v7           #notificationMessage:Ljava/lang/String;
    .end local v9           #dialogMessage:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 84
    .local v22, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v13}, Lcom/android/vending/model/LocalAsset;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 87
    .local v20, originalPackageName:Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 90
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 95
    .local v21, packageInfo:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v24

    .line 98
    .local v24, packagesForUid:[Ljava/lang/String;
    move-object/from16 v12, v24

    .local v12, arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v23, v12, v16

    .line 99
    .local v23, packageName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Malicious "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 100
    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/vending/model/Asset;->getIdByPackageNameAndState(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)Ljava/lang/String;

    move-result-object v17

    .line 102
    .local v17, id:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/vending/model/Asset;->uninstallById(Ljava/lang/String;)V

    .line 98
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 91
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v17           #id:Ljava/lang/String;
    .end local v19           #len$:I
    .end local v21           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v23           #packageName:Ljava/lang/String;
    .end local v24           #packagesForUid:[Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 92
    .local v15, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0

    .line 105
    .end local v15           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 109
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/android/vending/model/LocalAsset;->setRefundTimeout(Ljava/lang/Long;)V

    .line 110
    invoke-static {v14}, Lcom/android/vending/model/Asset;->uninstallById(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
