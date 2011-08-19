.class public Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;
    }
.end annotation


# static fields
.field private static final AVATAR_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGenericAvatar:Landroid/graphics/Bitmap;

.field private mLastSoundPlayedMs:J

.field private mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

.field private mNotificationMgr:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->AVATAR_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarNotifier"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 233
    :cond_0
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 235
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 247
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private cancelNotify(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 3
    .parameter "jid"
    .parameter "accountId"
    .parameter "settings"

    .prologue
    const/4 v1, 0x3

    .line 455
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 457
    const-string v0, "GTalkService"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelNotify for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    if-nez v0, :cond_1

    .line 462
    const-string v0, "cancelNotify: mNotificationInfo is null, cancel all"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 476
    :goto_0
    return-void

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->removeForUser(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 469
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    long-to-int v2, p2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 475
    :cond_2
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 471
    :cond_3
    :try_start_1
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelNotify: cannot find notification for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private createNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;JLandroid/graphics/Bitmap;IZ)Landroid/app/Notification;
    .locals 14
    .parameter "tickerText"
    .parameter "contentTitle"
    .parameter "contentMessage"
    .parameter "notificationIntent"
    .parameter "lightWeightNotify"
    .parameter "settings"
    .parameter "from"
    .parameter "accountId"
    .parameter "avatar"
    .parameter "unreadCount"
    .parameter "allowAlertStyleNotification"

    .prologue
    .line 515
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p5, :cond_5

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/high16 v13, 0x800

    move-object v0, v11

    move v1, v12

    move-object/from16 v2, p4

    move v3, v13

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    const v11, 0x1080077

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 524
    .local v8, notification:Landroid/app/Notification$Builder;
    const/4 v10, 0x1

    move/from16 v0, p11

    move v1, v10

    if-le v0, v1, :cond_0

    .line 525
    move-object v0, v8

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 528
    :cond_0
    if-eqz p10, :cond_1

    .line 530
    move-object v0, v8

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 533
    :cond_1
    if-nez p5, :cond_2

    if-eqz p7, :cond_2

    const-wide/16 v10, 0x0

    cmp-long v10, p8, v10

    if-lez v10, :cond_2

    if-eqz p12, :cond_2

    .line 535
    const-string v10, "popup"

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextNotification()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 537
    .local v7, isAlertStyleNotification:Z
    if-eqz v7, :cond_2

    .line 538
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.google.android.talk.RECEIVE_MESSAGE"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v6, intent:Landroid/content/Intent;
    const-string v10, "message"

    move-object v0, v6

    move-object v1, v10

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const-string v10, "from"

    move-object v0, v6

    move-object v1, v10

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const-string v10, "accountId"

    move-object v0, v6

    move-object v1, v10

    move-wide/from16 v2, p8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 543
    const-string v10, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 545
    invoke-static/range {p7 .. p7}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 546
    .local v4, bareJid:Ljava/lang/String;
    const-string v10, "username"

    invoke-virtual {v6, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    const-string v10, "android.intent.extra.INTENT"

    move-object v0, v6

    move-object v1, v10

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 549
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x800

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 554
    .end local v4           #bareJid:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #isAlertStyleNotification:Z
    :cond_2
    const/4 v9, 0x0

    .line 555
    .local v9, shouldVibrate:Z
    if-nez p5, :cond_6

    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->shouldSuppressSoundNotification()Z

    move-result v10

    if-nez v10, :cond_6

    .line 556
    move-object v0, p0

    move-object v1, v8

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->setRinger(Landroid/app/Notification$Builder;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)Z

    move-result v9

    .line 560
    :cond_3
    :goto_1
    const/4 v5, 0x4

    .line 561
    .local v5, defaults:I
    if-eqz v9, :cond_4

    .line 562
    or-int/lit8 v5, v5, 0x2

    .line 564
    :cond_4
    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 566
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v10

    return-object v10

    .end local v5           #defaults:I
    .end local v8           #notification:Landroid/app/Notification$Builder;
    .end local v9           #shouldVibrate:Z
    :cond_5
    move-object v11, p1

    .line 515
    goto/16 :goto_0

    .line 557
    .restart local v8       #notification:Landroid/app/Notification$Builder;
    .restart local v9       #shouldVibrate:Z
    :cond_6
    sget-boolean v10, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v10, :cond_3

    .line 558
    const-string v10, "createNotification: suppress sound notification"

    invoke-direct {p0, v10}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private decodeAvatar([B)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 667
    if-nez p1, :cond_0

    move-object v1, v6

    .line 699
    :goto_0
    return-object v1

    .line 670
    :cond_0
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 671
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    move-object v1, v6

    .line 672
    goto :goto_0

    .line 678
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 679
    .local v3, dwidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 681
    .local v4, dheight:I
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 682
    .local v7, res:Landroid/content/res/Resources;
    const v2, 0x1050005

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 684
    .local v11, vwidth:I
    const v2, 0x1050006

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 687
    .local v10, vheight:I
    if-gt v3, v11, :cond_2

    if-gt v4, v10, :cond_2

    move-object v1, v0

    .line 689
    goto :goto_0

    .line 692
    :cond_2
    int-to-float v2, v11

    int-to-float v6, v3

    div-float/2addr v2, v6

    int-to-float v6, v10

    int-to-float v12, v4

    div-float/2addr v6, v12

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 694
    .local v8, scale:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 695
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 697
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 698
    .local v9, scaled:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, v9

    .line 699
    goto :goto_0
.end method

.method private getAvatarFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "cursor"
    .parameter "dataColumn"

    .prologue
    .line 703
    invoke-static {p1, p2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->loadAvatarData(Landroid/database/Cursor;I)[B

    move-result-object v0

    .line 704
    .local v0, rawData:[B
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->decodeAvatar([B)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private getGenericAvatar()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mGenericAvatar:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 82
    .local v0, bmd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mGenericAvatar:Landroid/graphics/Bitmap;

    .line 84
    .end local v0           #bmd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mGenericAvatar:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method private internalRemoveAllNotifications()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->cancelNotifications()V

    .line 494
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    monitor-enter v0

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->removeAll()V

    .line 496
    monitor-exit v0

    .line 497
    return-void

    .line 496
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static loadAvatarData(Landroid/database/Cursor;I)[B
    .locals 1
    .parameter "cursor"
    .parameter "dataColumn"

    .prologue
    .line 663
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 708
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[StatusBarNotify] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return-void
.end method

.method private logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter "function"

    .prologue
    .line 712
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[StatusBarNotify] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-void
.end method

.method private notify(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Z)V
    .locals 21
    .parameter "accountId"
    .parameter "from"
    .parameter "nickname"
    .parameter "title"
    .parameter "tickerText"
    .parameter "message"
    .parameter "intent"
    .parameter "lightWeightNotify"
    .parameter "settings"
    .parameter "allowAlertStyleNotification"

    .prologue
    .line 402
    const/16 v17, 0x0

    .line 403
    .local v17, contentTitle:Ljava/lang/String;
    const/16 v16, 0x0

    .line 404
    .local v16, contentMessage:Ljava/lang/String;
    move-object/from16 v20, p8

    .line 405
    .local v20, notificationIntent:Landroid/content/Intent;
    const/4 v14, 0x0

    .line 406
    .local v14, unreadCount:I
    const/4 v13, 0x0

    .line 408
    .local v13, avatar:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    move-object v3, v0

    if-nez v3, :cond_0

    .line 409
    new-instance v3, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;-><init>(Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;Landroid/content/Context;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    .line 411
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    move-object v11, v0

    monitor-enter v11

    .line 413
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    move-object v3, v0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->add(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->getItemForAccount(J)Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;

    move-result-object v18

    .line 415
    .local v18, item:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mTitle:Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    .end local v17           #contentTitle:Ljava/lang/String;
    .local v5, contentTitle:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mMessage:Ljava/lang/String;

    move-object v6, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 417
    .end local v16           #contentMessage:Ljava/lang/String;
    .local v6, contentMessage:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mNotificationIntent:Landroid/content/Intent;

    move-object v7, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 418
    .end local v20           #notificationIntent:Landroid/content/Intent;
    .local v7, notificationIntent:Landroid/content/Intent;
    :try_start_3
    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mUnreadCount:I

    move v14, v0

    .line 419
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mAvatar:Landroid/graphics/Bitmap;

    move-object v13, v0

    .line 420
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v18           #item:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    :goto_0
    move-object/from16 v3, p0

    move-object/from16 v4, p6

    move/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p3

    move-wide/from16 v11, p1

    move/from16 v15, p11

    .line 426
    invoke-direct/range {v3 .. v15}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->createNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;JLandroid/graphics/Bitmap;IZ)Landroid/app/Notification;

    move-result-object v19

    .line 438
    .local v19, notification:Landroid/app/Notification;
    if-eqz v19, :cond_2

    .line 439
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    move-object v3, v0

    if-eqz v3, :cond_1

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object v3, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 450
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object v3, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move v4, v0

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 452
    :cond_2
    return-void

    .line 420
    .end local v5           #contentTitle:Ljava/lang/String;
    .end local v6           #contentMessage:Ljava/lang/String;
    .end local v7           #notificationIntent:Landroid/content/Intent;
    .end local v19           #notification:Landroid/app/Notification;
    .restart local v16       #contentMessage:Ljava/lang/String;
    .restart local v17       #contentTitle:Ljava/lang/String;
    .restart local v20       #notificationIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    move-object/from16 v7, v20

    .end local v20           #notificationIntent:Landroid/content/Intent;
    .restart local v7       #notificationIntent:Landroid/content/Intent;
    move-object/from16 v6, v16

    .end local v16           #contentMessage:Ljava/lang/String;
    .restart local v6       #contentMessage:Ljava/lang/String;
    move-object/from16 v5, v17

    .end local v17           #contentTitle:Ljava/lang/String;
    .restart local v5       #contentTitle:Ljava/lang/String;
    :goto_1
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v3

    .end local v6           #contentMessage:Ljava/lang/String;
    .end local v7           #notificationIntent:Landroid/content/Intent;
    .restart local v16       #contentMessage:Ljava/lang/String;
    .restart local v18       #item:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    .restart local v20       #notificationIntent:Landroid/content/Intent;
    :catchall_1
    move-exception v3

    move-object/from16 v7, v20

    .end local v20           #notificationIntent:Landroid/content/Intent;
    .restart local v7       #notificationIntent:Landroid/content/Intent;
    move-object/from16 v6, v16

    .end local v16           #contentMessage:Ljava/lang/String;
    .restart local v6       #contentMessage:Ljava/lang/String;
    goto :goto_1

    .end local v7           #notificationIntent:Landroid/content/Intent;
    .restart local v20       #notificationIntent:Landroid/content/Intent;
    :catchall_2
    move-exception v3

    move-object/from16 v7, v20

    .end local v20           #notificationIntent:Landroid/content/Intent;
    .restart local v7       #notificationIntent:Landroid/content/Intent;
    goto :goto_1

    .end local v18           #item:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    :catchall_3
    move-exception v3

    goto :goto_1

    .end local v5           #contentTitle:Ljava/lang/String;
    .end local v6           #contentMessage:Ljava/lang/String;
    .end local v7           #notificationIntent:Landroid/content/Intent;
    .restart local v16       #contentMessage:Ljava/lang/String;
    .restart local v17       #contentTitle:Ljava/lang/String;
    .restart local v20       #notificationIntent:Landroid/content/Intent;
    :cond_3
    move-object/from16 v7, v20

    .end local v20           #notificationIntent:Landroid/content/Intent;
    .restart local v7       #notificationIntent:Landroid/content/Intent;
    move-object/from16 v6, v16

    .end local v16           #contentMessage:Ljava/lang/String;
    .restart local v6       #contentMessage:Ljava/lang/String;
    move-object/from16 v5, v17

    .end local v17           #contentTitle:Ljava/lang/String;
    .restart local v5       #contentTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method private setRinger(Landroid/app/Notification$Builder;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)Z
    .locals 11
    .parameter "notification"
    .parameter "settings"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 571
    invoke-virtual {p2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextRingtoneURI()Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, ringtoneUri:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextVibrateWhen()Ljava/lang/String;

    move-result-object v6

    .line 578
    .local v6, vibrateWhen:Ljava/lang/String;
    const-string v7, "always"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 579
    .local v4, vibrateAlways:Z
    if-nez v4, :cond_3

    const-string v7, "silent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v9

    .line 580
    .local v5, vibrateSilent:Z
    :goto_0
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 584
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    if-ne v7, v9, :cond_4

    move v2, v9

    .line 587
    .local v2, nowSilent:Z
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    move-object v1, v7

    .line 588
    .local v1, notificationSoundUri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 589
    if-eqz v1, :cond_0

    .line 590
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mLastSoundPlayedMs:J

    .line 593
    :cond_0
    sget-boolean v7, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setRinger: notificationSoundUri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 597
    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    :cond_2
    move v7, v9

    :goto_3
    return v7

    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #notificationSoundUri:Landroid/net/Uri;
    .end local v2           #nowSilent:Z
    .end local v5           #vibrateSilent:Z
    :cond_3
    move v5, v10

    .line 579
    goto :goto_0

    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v5       #vibrateSilent:Z
    :cond_4
    move v2, v10

    .line 584
    goto :goto_1

    .line 587
    .restart local v2       #nowSilent:Z
    :cond_5
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v1, v7

    goto :goto_2

    .restart local v1       #notificationSoundUri:Landroid/net/Uri;
    :cond_6
    move v7, v10

    .line 597
    goto :goto_3
.end method

.method private shouldSuppressSoundNotification()Z
    .locals 4

    .prologue
    .line 386
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mLastSoundPlayedMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissAllNotifications()V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->internalRemoveAllNotifications()V

    .line 480
    return-void
.end method

.method public dismissNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 0
    .parameter "buddy"
    .parameter "accountId"
    .parameter "settings"

    .prologue
    .line 500
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->cancelNotify(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 501
    return-void
.end method

.method public dismissNotificationsForAccount(JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 2
    .parameter "accountId"
    .parameter "settings"

    .prologue
    .line 483
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissNotificationsForAccount: account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 487
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    monitor-enter v0

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->removeForAccount(J)Z

    .line 489
    monitor-exit v0

    .line 490
    return-void

    .line 489
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAvatarForContact(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "contact"
    .parameter "accountId"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 630
    if-nez p1, :cond_0

    .line 631
    const-string v0, "GTalkService"

    const-string v1, "getAvatarForContact: null contact!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 659
    :goto_0
    return-object v0

    .line 634
    :cond_0
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 636
    .local v4, selectionArgs:[Ljava/lang/String;
    aput-object p1, v4, v1

    .line 638
    sget-object v0, Lcom/google/android/gsf/TalkContract$Avatars;->CONTENT_URI_AVATARS_BY:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 639
    .local v7, builder:Landroid/net/Uri$Builder;
    invoke-static {v7, p2, p3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 641
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->AVATAR_PROJECTION:[Ljava/lang/String;

    const-string v3, "contact=?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 647
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 648
    .local v6, avatar:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    .line 650
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    const/4 v0, 0x0

    invoke-direct {p0, v8, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->getAvatarFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 654
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 659
    :goto_1
    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->getGenericAvatar()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 654
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 657
    :cond_2
    const-string v0, "getAvatarForContact"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, v6

    .line 659
    goto :goto_0
.end method

.method public notifyAuthError(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 602
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108008a

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f080065

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 609
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->shouldSuppressSoundNotification()Z

    move-result v1

    if-nez v1, :cond_1

    .line 610
    invoke-direct {p0, v0, p4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->setRinger(Landroid/app/Notification$Builder;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)Z

    move-result v1

    .line 612
    :goto_0
    if-eqz v1, :cond_0

    .line 613
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 616
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 617
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 618
    const-string v2, "accountId"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 619
    const-string v2, "username"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f080066

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 626
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    long-to-int v2, p2

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 627
    return-void

    :cond_1
    move v1, v4

    goto :goto_0
.end method

.method public notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Z)V
    .locals 18
    .parameter "jid"
    .parameter "nickname"
    .parameter "message"
    .parameter "accountId"
    .parameter "username"
    .parameter "groupId"
    .parameter "lightWeightNotify"
    .parameter "settings"
    .parameter "haveMultipleAccounts"

    .prologue
    .line 280
    const-string v4, "off"

    invoke-virtual/range {p10 .. p10}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextNotification()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 282
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "notifyChat: notification not enabled"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    if-eqz p9, :cond_2

    .line 286
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    const-string v4, "notifyChat: lightWeightNotify"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, bareJid:Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, p7, v4

    if-eqz v4, :cond_4

    invoke-static/range {p7 .. p8}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v17, v4

    .line 296
    .local v17, uri:Landroid/net/Uri;
    :goto_1
    new-instance v12, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    move-object v0, v12

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 297
    .local v12, intent:Landroid/content/Intent;
    const/high16 v4, 0x3400

    invoke-virtual {v12, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 300
    const-string v4, "from"

    move-object v0, v12

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v4, "accountId"

    move-object v0, v12

    move-object v1, v4

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 302
    const-string v4, "from_notify"

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    const-string v4, "username"

    move-object v0, v12

    move-object v1, v4

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-wide/16 v4, 0x0

    cmp-long v4, p7, v4

    if-eqz v4, :cond_3

    .line 306
    const-string v4, "is_muc"

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 311
    .local v16, resources:Landroid/content/res/Resources;
    if-eqz p11, :cond_5

    const v4, 0x7f080050

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p6, v5, v6

    move-object/from16 v0, v16

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    .line 315
    .local v9, title:Ljava/lang/String;
    :goto_2
    const v4, 0x7f08004f

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    move-object/from16 v0, v16

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 318
    .local v10, snippet:Ljava/lang/String;
    const/4 v15, 0x1

    move-object/from16 v4, p0

    move-wide/from16 v5, p4

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    move/from16 v13, p9

    move-object/from16 v14, p10

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notify(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Z)V

    goto/16 :goto_0

    .line 292
    .end local v9           #title:Ljava/lang/String;
    .end local v10           #snippet:Ljava/lang/String;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v16           #resources:Landroid/content/res/Resources;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_4
    move-wide/from16 v0, p4

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v17, v4

    goto/16 :goto_1

    .restart local v12       #intent:Landroid/content/Intent;
    .restart local v16       #resources:Landroid/content/res/Resources;
    .restart local v17       #uri:Landroid/net/Uri;
    :cond_5
    move-object/from16 v9, p2

    .line 311
    goto :goto_2
.end method

.method public notifyGroupChatInvitation(Lcom/google/android/gtalkservice/GroupChatInvitation;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 18
    .parameter "invitation"
    .parameter "accountId"
    .parameter "settings"

    .prologue
    .line 356
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getGroupContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v17

    .line 357
    .local v17, uri:Landroid/net/Uri;
    new-instance v12, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    move-object v0, v12

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 358
    .local v12, intent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getRoomAddress()Ljava/lang/String;

    move-result-object v16

    .line 359
    .local v16, roomJid:Ljava/lang/String;
    const-string v4, "from"

    move-object v0, v12

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v4, "accountId"

    move-object v0, v12

    move-object v1, v4

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 361
    const-string v4, "is_muc"

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 362
    const-string v4, "muc_inviter"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v4, "muc_password"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v4, "from_notify"

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    const-string v4, "state"

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f08004d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 370
    .local v9, title:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 371
    .local v7, inviter:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f080052

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 373
    .local v10, snippet:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f080053

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 376
    .local v11, dialogMessage:Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p2

    move-object v8, v7

    move-object/from16 v14, p4

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notify(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Z)V

    .line 378
    return-void
.end method

.method public notifySubscriptionRequest(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 16
    .parameter "contact"
    .parameter "message"
    .parameter "accountId"
    .parameter "settings"

    .prologue
    .line 329
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getNotifyFriendInvitation()Z

    move-result v4

    if-nez v4, :cond_0

    .line 330
    const-string v4, "notifySubscriptionRequest: setting says no notify for invite"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 348
    :goto_0
    return-void

    .line 334
    :cond_0
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyInvite: contact="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 336
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 337
    .local v7, bareJid:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v4, "android.intent.action.GTALK_MANAGE_SUBSCRIPTION"

    const/4 v5, 0x0

    invoke-direct {v12, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 338
    .local v12, intent:Landroid/content/Intent;
    const-string v4, "vnd.android.cursor.item/gtalk-contacts"

    invoke-virtual {v12, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v4, "from"

    move-object v0, v12

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v4, "accountId"

    move-object v0, v12

    move-object v1, v4

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 341
    const-string v4, "from_notify"

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    const-string v4, "username"

    invoke-virtual {v12, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    move-object/from16 v9, p1

    .line 346
    .local v9, title:Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p3

    move-object v8, v7

    move-object/from16 v10, p2

    move-object/from16 v11, p2

    move-object/from16 v14, p5

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notify(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Z)V

    goto :goto_0
.end method

.method public onServiceDestroyed()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public removeChatNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 0
    .parameter "jid"
    .parameter "accountId"
    .parameter "settings"

    .prologue
    .line 323
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->cancelNotify(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 324
    return-void
.end method

.method public removeSubscriptionNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 1
    .parameter "jid"
    .parameter "accountId"
    .parameter "settings"

    .prologue
    .line 351
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->cancelNotify(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 352
    return-void
.end method
