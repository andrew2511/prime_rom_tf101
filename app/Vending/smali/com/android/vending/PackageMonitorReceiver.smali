.class public Lcom/android/vending/PackageMonitorReceiver;
.super Lcom/android/vending/util/ServiceBroadcastReceiver;
.source "PackageMonitorReceiver.java"


# static fields
.field private static sExpectedBatchInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/vending/util/ServiceBroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "intent"

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static handleExpectedInstalls(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "packageNames"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 209
    sget-object v6, Lcom/android/vending/PackageMonitorReceiver;->sExpectedBatchInstalls:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const/4 v1, 0x0

    .line 214
    .local v1, enableCheckin:Z
    const/4 v5, 0x0

    .line 215
    .local v5, wasAnythingRemoved:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 216
    .local v4, packageName:Ljava/lang/String;
    if-nez v5, :cond_2

    sget-object v6, Lcom/android/vending/PackageMonitorReceiver;->sExpectedBatchInstalls:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v5, v7

    .line 215
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v5, v8

    .line 216
    goto :goto_2

    .line 219
    .end local v4           #packageName:Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_6

    .line 221
    sget-object v6, Lcom/android/vending/PackageMonitorReceiver;->sExpectedBatchInstalls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_5

    move v1, v7

    .line 227
    :goto_3
    if-eqz v1, :cond_0

    .line 228
    const/4 v6, 0x0

    sput-object v6, Lcom/android/vending/PackageMonitorReceiver;->sExpectedBatchInstalls:Ljava/util/ArrayList;

    .line 229
    invoke-static {p0}, Lcom/android/vending/CheckinUpdater;->get(Landroid/content/Context;)Lcom/android/vending/CheckinUpdater;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/vending/CheckinUpdater;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    move v1, v8

    .line 221
    goto :goto_3

    .line 224
    :cond_6
    const/4 v1, 0x1

    goto :goto_3
.end method

.method private static handlePackagesAvailable(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "packageNames"

    .prologue
    const/4 v6, 0x1

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, contentChanged:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 168
    .local v4, packageName:Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v5

    invoke-virtual {v5, p0, v4, v6}, Lcom/android/vending/api/LocalAssetDatabase;->syncWithPackageManager(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v1, v6

    .line 167
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/4 v5, 0x0

    move v1, v5

    goto :goto_1

    .line 174
    .end local v4           #packageName:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 175
    invoke-static {p0}, Lcom/android/vending/PackageMonitorReceiver;->notifyContentStateChange(Landroid/content/Context;)V

    .line 177
    :cond_3
    return-void
.end method

.method private static handlePackagesUnavailable(Landroid/content/Context;[Ljava/lang/String;Z)V
    .locals 10
    .parameter "context"
    .parameter "packageNames"
    .parameter "replacing"

    .prologue
    const/4 v9, 0x0

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, contentChanged:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v6, v0, v2

    .line 114
    .local v6, packageName:Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v8

    invoke-virtual {v8, p0, v6, v9}, Lcom/android/vending/api/LocalAssetDatabase;->syncWithPackageManager(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v8, 0x1

    move v1, v8

    .line 113
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v9

    .line 114
    goto :goto_1

    .line 118
    .end local v6           #packageName:Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-static {v8}, Lcom/android/vending/model/LocalAsset;->getAll(Lcom/android/vending/model/LocalAssetInfo$AssetState;)Ljava/util/Collection;

    move-result-object v8

    invoke-static {v8}, Lcom/android/vending/model/LocalAsset;->getIds(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, uninstalledIds:[Ljava/lang/String;
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingNotificationManager()Lcom/android/vending/VendingNotificationManager;

    move-result-object v5

    .line 120
    .local v5, nm:Lcom/android/vending/VendingNotificationManager;
    move-object v0, v7

    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v3, v0, v2

    .line 121
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v5, p0, v3}, Lcom/android/vending/VendingNotificationManager;->hideNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 124
    .end local v3           #id:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 127
    if-nez p2, :cond_4

    .line 128
    invoke-static {p0}, Lcom/android/vending/PackageMonitorReceiver;->notifyContentStateChange(Landroid/content/Context;)V

    .line 131
    :cond_4
    return-void
.end method

.method public static notifyContentStateChange(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 194
    invoke-static {p0}, Lcom/android/vending/CheckinUpdater;->get(Landroid/content/Context;)Lcom/android/vending/CheckinUpdater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/CheckinUpdater;->update(Z)V

    .line 195
    return-void
.end method

.method public static setExpectedBatchInstalls(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 206
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v2, Lcom/android/vending/PackageMonitorReceiver;->sExpectedBatchInstalls:Ljava/util/ArrayList;

    .line 202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 203
    .local v0, asset:Lcom/android/vending/model/Asset;
    sget-object v2, Lcom/android/vending/PackageMonitorReceiver;->sExpectedBatchInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    :cond_1
    invoke-static {p0}, Lcom/android/vending/CheckinUpdater;->get(Landroid/content/Context;)Lcom/android/vending/CheckinUpdater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/vending/CheckinUpdater;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/vending/InitializeMarketAction;->checkMarketInitialized()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 45
    invoke-static {p2}, Lcom/android/vending/PackageMonitorReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, packageName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 48
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_4

    const-string v9, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    move v8, v11

    .line 50
    .local v8, replacing:Z
    :goto_0
    new-array v9, v11, [Ljava/lang/String;

    aput-object v6, v9, v10

    invoke-static {p1, v9, v8}, Lcom/android/vending/PackageMonitorReceiver;->handlePackagesUnavailable(Landroid/content/Context;[Ljava/lang/String;Z)V

    .line 51
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v9

    invoke-interface {v9, v6}, Lcom/android/vending/model/AbstractLocalAssetCache;->invalidate(Ljava/lang/String;)V

    .line 54
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v8           #replacing:Z
    :cond_0
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 55
    invoke-static {p2}, Lcom/android/vending/PackageMonitorReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    .line 56
    .restart local v6       #packageName:Ljava/lang/String;
    invoke-static {}, Lcom/android/vending/InitializeMarketAction;->checkMarketInitialized()Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "backup"

    invoke-static {v6, v9}, Lcom/android/vending/model/Asset;->getIdsByPackageNameAndSource(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_2

    .line 61
    :cond_1
    new-array v9, v11, [Ljava/lang/String;

    aput-object v6, v9, v10

    invoke-static {p1, v9}, Lcom/android/vending/PackageMonitorReceiver;->handleExpectedInstalls(Landroid/content/Context;[Ljava/lang/String;)V

    .line 62
    new-array v9, v11, [Ljava/lang/String;

    aput-object v6, v9, v10

    invoke-static {p1, v9}, Lcom/android/vending/PackageMonitorReceiver;->handlePackagesAvailable(Landroid/content/Context;[Ljava/lang/String;)V

    .line 64
    :cond_2
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v9

    invoke-interface {v9, v6}, Lcom/android/vending/model/AbstractLocalAssetCache;->invalidate(Ljava/lang/String;)V

    .line 67
    .end local v6           #packageName:Ljava/lang/String;
    :cond_3
    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/android/vending/InitializeMarketAction;->checkMarketInitialized()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 69
    const-string v9, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, packageNames:[Ljava/lang/String;
    if-eqz v7, :cond_5

    array-length v9, v7

    if-lez v9, :cond_5

    .line 72
    invoke-static {p1, v7, v10}, Lcom/android/vending/PackageMonitorReceiver;->handlePackagesUnavailable(Landroid/content/Context;[Ljava/lang/String;Z)V

    .line 73
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v6, v1, v4

    .line 74
    .restart local v6       #packageName:Ljava/lang/String;
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v9

    invoke-interface {v9, v6}, Lcom/android/vending/model/AbstractLocalAssetCache;->invalidate(Ljava/lang/String;)V

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #packageNames:[Ljava/lang/String;
    .restart local v2       #extras:Landroid/os/Bundle;
    :cond_4
    move v8, v10

    .line 48
    goto :goto_0

    .line 79
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_5
    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 80
    const-string v9, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 82
    .restart local v7       #packageNames:[Ljava/lang/String;
    if-eqz v7, :cond_b

    array-length v9, v7

    if-lez v9, :cond_b

    .line 83
    const/4 v3, 0x0

    .line 84
    .local v3, havePackageInBackup:Z
    move-object v1, v7

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v5, :cond_8

    aget-object v6, v1, v4

    .line 88
    .restart local v6       #packageName:Ljava/lang/String;
    if-nez v3, :cond_6

    const-string v9, "backup"

    invoke-static {v6, v9}, Lcom/android/vending/model/Asset;->getIdsByPackageNameAndSource(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_7

    :cond_6
    move v3, v11

    .line 84
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    move v3, v10

    .line 88
    goto :goto_3

    .line 92
    .end local v6           #packageName:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/android/vending/InitializeMarketAction;->checkMarketInitialized()Z

    move-result v9

    if-nez v9, :cond_9

    if-eqz v3, :cond_a

    .line 93
    :cond_9
    invoke-static {p1, v7}, Lcom/android/vending/PackageMonitorReceiver;->handleExpectedInstalls(Landroid/content/Context;[Ljava/lang/String;)V

    .line 94
    invoke-static {p1, v7}, Lcom/android/vending/PackageMonitorReceiver;->handlePackagesAvailable(Landroid/content/Context;[Ljava/lang/String;)V

    .line 96
    :cond_a
    move-object v1, v7

    array-length v5, v1

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_b

    aget-object v6, v1, v4

    .line 97
    .restart local v6       #packageName:Ljava/lang/String;
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v9

    invoke-interface {v9, v6}, Lcom/android/vending/model/AbstractLocalAssetCache;->invalidate(Ljava/lang/String;)V

    .line 96
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 101
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #havePackageInBackup:Z
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #packageNames:[Ljava/lang/String;
    :cond_b
    return-void
.end method

.method public needWakeLock()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
