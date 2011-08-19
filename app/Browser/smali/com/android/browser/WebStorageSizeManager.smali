.class public Lcom/android/browser/WebStorageSizeManager;
.super Ljava/lang/Object;
.source "WebStorageSizeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;,
        Lcom/android/browser/WebStorageSizeManager$AppCacheInfo;,
        Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;,
        Lcom/android/browser/WebStorageSizeManager$DiskInfo;
    }
.end annotation


# static fields
.field private static mLastOutOfSpaceNotificationTime:J


# instance fields
.field private mAppCacheMaxSize:J

.field private final mContext:Landroid/content/Context;

.field private mDiskInfo:Lcom/android/browser/WebStorageSizeManager$DiskInfo;

.field private final mGlobalLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/browser/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/WebStorageSizeManager$DiskInfo;Lcom/android/browser/WebStorageSizeManager$AppCacheInfo;)V
    .locals 4
    .parameter "ctx"
    .parameter "diskInfo"
    .parameter "appCacheInfo"

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/android/browser/WebStorageSizeManager;->mDiskInfo:Lcom/android/browser/WebStorageSizeManager$DiskInfo;

    .line 194
    invoke-direct {p0}, Lcom/android/browser/WebStorageSizeManager;->getGlobalLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/WebStorageSizeManager;->mGlobalLimit:J

    .line 197
    iget-wide v0, p0, Lcom/android/browser/WebStorageSizeManager;->mGlobalLimit:J

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    invoke-interface {p3}, Lcom/android/browser/WebStorageSizeManager$AppCacheInfo;->getAppCacheSizeBytes()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    .line 199
    return-void
.end method

.method static calculateGlobalLimit(JJ)J
    .locals 4
    .parameter "fileSystemSizeBytes"
    .parameter "freeSpaceBytes"

    .prologue
    .line 366
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    cmp-long v0, p2, p0

    if-lez v0, :cond_1

    .line 369
    :cond_0
    const-wide/16 p0, 0x0

    .line 385
    .end local p0
    .end local p2
    :goto_0
    return-wide p0

    .line 372
    .restart local p0
    .restart local p2
    :cond_1
    const/4 v0, 0x2

    const-wide/32 v1, 0x100000

    div-long v1, p0, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    shl-int/2addr v0, v1

    int-to-long v0, v0

    .line 375
    .local v0, fileSystemSizeRatio:J
    div-long/2addr p0, v0

    .end local p0
    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/16 v0, 0x2

    div-long/2addr p2, v0

    .end local v0           #fileSystemSizeRatio:J
    .end local p2
    long-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    double-to-long p0, p0

    .line 380
    .local p0, maxSizeBytes:J
    const-wide/32 p2, 0x100000

    .line 381
    .local p2, maxSizeStepBytes:J
    cmp-long v0, p0, p2

    if-gez v0, :cond_2

    .line 382
    const-wide/16 p0, 0x0

    goto :goto_0

    .line 384
    :cond_2
    rem-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    .line 385
    .local v0, roundingExtra:J
    :goto_1
    div-long/2addr p0, p2

    .end local p0           #maxSizeBytes:J
    add-long/2addr p0, v0

    mul-long/2addr p0, p2

    goto :goto_0

    .line 384
    .end local v0           #roundingExtra:J
    .restart local p0       #maxSizeBytes:J
    :cond_3
    const-wide/16 v0, 0x1

    goto :goto_1
.end method

.method private getGlobalLimit()J
    .locals 6

    .prologue
    .line 359
    iget-object v4, p0, Lcom/android/browser/WebStorageSizeManager;->mDiskInfo:Lcom/android/browser/WebStorageSizeManager$DiskInfo;

    invoke-interface {v4}, Lcom/android/browser/WebStorageSizeManager$DiskInfo;->getFreeSpaceSizeBytes()J

    move-result-wide v2

    .line 360
    .local v2, freeSpace:J
    iget-object v4, p0, Lcom/android/browser/WebStorageSizeManager;->mDiskInfo:Lcom/android/browser/WebStorageSizeManager$DiskInfo;

    invoke-interface {v4}, Lcom/android/browser/WebStorageSizeManager$DiskInfo;->getTotalSizeBytes()J

    move-result-wide v0

    .line 361
    .local v0, fileSystemSize:J
    invoke-static {v0, v1, v2, v3}, Lcom/android/browser/WebStorageSizeManager;->calculateGlobalLimit(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public static resetLastOutOfSpaceNotificationTime()V
    .locals 4

    .prologue
    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/browser/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    .line 354
    return-void
.end method

.method private scheduleOutOfSpaceNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 395
    iget-object v0, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    sget-wide v0, Lcom/android/browser/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/browser/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 402
    :cond_2
    const v0, 0x108008a

    .line 403
    iget-object v1, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    const v2, 0x7f090137

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 405
    iget-object v2, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    const v3, 0x7f090138

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 408
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    const-string v6, ":android:show_fragment"

    const-class v7, Lcom/android/browser/preferences/WebsiteSettingsFragment;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    iget-object v6, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 413
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6, v0, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 414
    iget-object v0, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0, v1, v2, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 415
    iget v0, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Landroid/app/Notification;->flags:I

    .line 417
    const-string v0, "notification"

    .line 418
    iget-object v1, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 420
    if-eqz p0, :cond_0

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/browser/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    .line 422
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public getAppCacheMaxSize()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    return-wide v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 13
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 236
    iget-wide v9, p0, Lcom/android/browser/WebStorageSizeManager;->mGlobalLimit:J

    sub-long v9, v9, p7

    iget-wide v11, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    sub-long v7, v9, v11

    .line 238
    .local v7, totalUnusedQuota:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_1

    .line 241
    const-wide/16 v9, 0x0

    cmp-long v9, p7, v9

    if-lez v9, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/android/browser/WebStorageSizeManager;->scheduleOutOfSpaceNotification()V

    .line 250
    :cond_0
    move-object/from16 v0, p9

    move-wide/from16 v1, p3

    invoke-interface {v0, v1, v2}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 300
    :goto_0
    return-void

    .line 258
    :cond_1
    move-wide/from16 v3, p3

    .line 259
    .local v3, newOriginQuota:J
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-nez v9, :cond_4

    .line 264
    cmp-long v9, v7, p5

    if-ltz v9, :cond_3

    .line 265
    move-wide/from16 v3, p5

    .line 294
    :cond_2
    :goto_1
    move-object/from16 v0, p9

    move-wide v1, v3

    invoke-interface {v0, v1, v2}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0

    .line 274
    :cond_3
    const-wide/16 v3, 0x0

    goto :goto_1

    .line 283
    :cond_4
    const-wide/16 v9, 0x0

    cmp-long v9, p5, v9

    if-nez v9, :cond_5

    const-wide/32 v9, 0x100000

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-wide v5, v9

    .line 286
    .local v5, quotaIncrease:J
    :goto_2
    add-long/2addr v3, v5

    .line 288
    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 290
    move-wide/from16 v3, p3

    goto :goto_1

    .end local v5           #quotaIncrease:J
    :cond_5
    move-wide/from16 v5, p5

    .line 283
    goto :goto_2
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 10
    .parameter "spaceNeeded"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    const-wide/32 v8, 0x80000

    const-wide/16 v6, 0x0

    .line 318
    iget-wide v2, p0, Lcom/android/browser/WebStorageSizeManager;->mGlobalLimit:J

    sub-long/2addr v2, p3

    iget-wide v4, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    sub-long v0, v2, v4

    .line 320
    .local v0, totalUnusedQuota:J
    add-long v2, p1, v8

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 323
    cmp-long v2, p3, v6

    if-lez v2, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/android/browser/WebStorageSizeManager;->scheduleOutOfSpaceNotification()V

    .line 332
    :cond_0
    invoke-interface {p5, v6, v7}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 346
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-wide v2, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    add-long v4, p1, v8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    .line 340
    iget-wide v2, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    invoke-interface {p5, v2, v3}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0
.end method
