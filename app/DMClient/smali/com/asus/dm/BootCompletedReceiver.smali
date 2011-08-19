.class public Lcom/asus/dm/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DELAY_BOOT_COUNT:Ljava/lang/String; = "com.asud.dm.extra.delayCount"

.field public static final FROM_BOOTCOMPLETE:Ljava/lang/String; = "com.asud.dm.fromBootComplete"

.field private static final IS_DEBUG:Z = true

.field private static mCal:Ljava/util/Calendar;

.field private static mCal_after18M:Ljava/util/Calendar;

.field private static mCal_after6M:Ljava/util/Calendar;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelayBootCompletedPeriod:I

.field private mRegMgr:Lcom/asus/dm/DMCRegistryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/asus/dm/BootCompletedReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/asus/dm/BootCompletedReceiver;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    const/16 v0, 0x7530

    iput v0, p0, Lcom/asus/dm/BootCompletedReceiver;->mDelayBootCompletedPeriod:I

    return-void
.end method

.method private checkPollingTime()V
    .locals 7

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/asus/dm/BootCompletedReceiver;->getNextPollingInterval()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/asus/dm/BootCompletedReceiver;->getPollingInterval()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 209
    .local v0, lastTime:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===== time changed: set lastpollingtime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0, v1}, Lcom/asus/dm/BootCompletedReceiver;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 210
    iget-object v2, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v2, v0, v1}, Lcom/asus/dm/DMCRegistryManager;->setLastFotaPollingTime(J)V

    .line 211
    iget-object v2, p0, Lcom/asus/dm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lcom/asus/dm/BootCompletedReceiver;->mDelayBootCompletedPeriod:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/asus/dm/BootCompletedReceiver;->delayBootCompleted(Landroid/content/Context;J)V

    .line 213
    .end local v0           #lastTime:J
    :cond_0
    return-void
.end method

.method private delayBootCompleted(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "timeMillis"

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/asus/dm/BootCompletedReceiver;->delayBootCompleted(Landroid/content/Context;JI)V

    .line 351
    return-void
.end method

.method private delayBootCompleted(Landroid/content/Context;JI)V
    .locals 6
    .parameter "context"
    .parameter "timeMillis"
    .parameter "retryCnt"

    .prologue
    const/4 v5, 0x0

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===== delayBootComplete to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2, p3}, Lcom/asus/dm/BootCompletedReceiver;->getTimeString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 354
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/asus/dm/BootCompletedReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.asus.dm.DMService.delayBootCompleted"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v3, "com.asud.dm.extra.delayCount"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const/high16 v3, 0x800

    invoke-static {p1, v5, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 359
    .local v2, sender:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 360
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v5, p2, p3, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 361
    return-void
.end method

.method private getNextPollingInterval()J
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 240
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 242
    .local v10, now:Ljava/util/Calendar;
    sget-object v0, Lcom/asus/dm/BootCompletedReceiver;->mCal:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 243
    sget-wide v8, Landroid/os/Build;->TIME:J

    .line 244
    .local v8, lBuildTime:J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 245
    .local v7, date:Ljava/util/Date;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-virtual {v7}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v7}, Ljava/util/Date;->getSeconds()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    sput-object v0, Lcom/asus/dm/BootCompletedReceiver;->mCal:Ljava/util/Calendar;

    .line 249
    .end local v7           #date:Ljava/util/Date;
    .end local v8           #lBuildTime:J
    :cond_0
    sget-object v0, Lcom/asus/dm/BootCompletedReceiver;->mCal_after6M:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 250
    sget-object v0, Lcom/asus/dm/BootCompletedReceiver;->mCal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    sput-object v0, Lcom/asus/dm/BootCompletedReceiver;->mCal_after6M:Ljava/util/Calendar;

    .line 251
    sget-object v0, Lcom/asus/dm/BootCompletedReceiver;->mCal_after6M:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v11, v1}, Ljava/util/Calendar;->add(II)V

    .line 254
    :cond_1
    sget-object v0, Lcom/asus/dm/BootCompletedReceiver;->mCal_after18M:Ljava/util/Calendar;

    if-nez v0, :cond_2

    .line 255
    sget-object v0, Lcom/asus/dm/BootCompletedReceiver;->mCal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    sput-object v0, Lcom/asus/dm/BootCompletedReceiver;->mCal_after18M:Ljava/util/Calendar;

    .line 256
    sget-object v0, Lcom/asus/dm/BootCompletedReceiver;->mCal_after18M:Ljava/util/Calendar;

    const/16 v1, 0x12

    invoke-virtual {v0, v11, v1}, Ljava/util/Calendar;->add(II)V

    .line 259
    :cond_2
    sget-object v0, Lcom/asus/dm/BootCompletedReceiver;->mCal_after18M:Ljava/util/Calendar;

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    const-string v0, "NextPollingInterval: Long.MAX_VALUE"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    const-wide v0, 0x7fffffffffffffffL

    .line 267
    :goto_0
    return-wide v0

    .line 262
    :cond_3
    sget-object v0, Lcom/asus/dm/BootCompletedReceiver;->mCal_after6M:Ljava/util/Calendar;

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    const-string v0, "NextPollingInterval: 2592000000L"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    const-wide v0, 0x9a7ec800L

    goto :goto_0

    .line 266
    :cond_4
    const-string v0, "NextPollingInterval: 864000000"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    const-wide/32 v0, 0x337f9800

    goto :goto_0
.end method

.method private getPollingInterval()J
    .locals 4

    .prologue
    .line 272
    iget-object v2, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v2}, Lcom/asus/dm/DMCRegistryManager;->getFotaPollingInterval()J

    move-result-wide v0

    .line 273
    .local v0, interval:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/asus/dm/BootCompletedReceiver;->getNextPollingInterval()J

    move-result-wide v0

    .line 279
    iget-object v2, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v2, v0, v1}, Lcom/asus/dm/DMCRegistryManager;->setFotaPollingInterval(J)V

    .line 286
    :cond_0
    :goto_0
    return-wide v0

    .line 280
    :cond_1
    const-wide/32 v2, 0x240c8400

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/asus/dm/BootCompletedReceiver;->getNextPollingInterval()J

    move-result-wide v0

    .line 284
    iget-object v2, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v2, v0, v1}, Lcom/asus/dm/DMCRegistryManager;->setFotaPollingInterval(J)V

    goto :goto_0
.end method

.method private getTimeString(J)Ljava/lang/String;
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 236
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isFotaPollingTimeUp(JJ)Z
    .locals 4
    .parameter "currentTime"
    .parameter "lastPollingTime"

    .prologue
    .line 231
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    sub-long v0, p1, p3

    invoke-direct {p0}, Lcom/asus/dm/BootCompletedReceiver;->getPollingInterval()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPhoneReadyToUse(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .parameter "context"
    .parameter "pIntent"

    .prologue
    .line 312
    invoke-static {p1}, Lcom/asus/dm/util/UniqueId;->getInstances(Landroid/content/Context;)Lcom/asus/dm/util/UniqueId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/dm/util/UniqueId;->isReadToUse()Z

    move-result v1

    .line 313
    .local v1, isReady:Z
    if-nez v1, :cond_0

    .line 314
    if-eqz p2, :cond_0

    .line 315
    const-string v2, "com.asud.dm.extra.delayCount"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 316
    .local v0, cnt:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPhoneReadyToUse --> not ready, delayCnt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/asus/dm/BootCompletedReceiver;->mDelayBootCompletedPeriod:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/asus/dm/BootCompletedReceiver;->delayBootCompleted(Landroid/content/Context;JI)V

    .line 322
    .end local v0           #cnt:I
    :cond_0
    return v1
.end method

.method private receiveBootComplete()Z
    .locals 14

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 44
    .local v0, createDMSession:Z
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/asus/dm/c2dm/C2DMessaging;->getC2dmSendRegIdStatus(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 45
    new-instance v4, Landroid/content/Intent;

    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    const-class v11, Lcom/asus/dm/c2dm/C2DMReceiver;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v4, intent:Landroid/content/Intent;
    const-string v10, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v10}, Lcom/asus/dm/DMCRegistryManager;->getHasUpdateFile()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 51
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/asus/dm/DMNotification;->createNotification(Landroid/content/Context;Z)V

    .line 52
    const/4 v10, 0x0

    .line 125
    :goto_0
    return v10

    .line 55
    :cond_1
    new-instance v3, Landroid/content/Intent;

    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    const-class v11, Lcom/asus/dm/DMService;

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v3, i:Landroid/content/Intent;
    const-string v10, "com.asud.dm.fromBootComplete"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    const-string v10, "check fota update status."

    invoke-static {p0, v10}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-static {v10}, Lcom/asus/dm/util/DMUtils;->readFotaUpgradeStatus(Lcom/asus/dm/DMCRegistryManager;)I

    move-result v9

    .line 60
    .local v9, value:I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkFotaUpgradeStatus1: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v10, "com.asus.dm.fota.upgradestatus"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const/4 v0, 0x1

    .line 73
    :cond_2
    :goto_1
    const-string v10, "check unfinished dm session."

    invoke-static {p0, v10}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v10}, Lcom/asus/dm/DMCRegistryManager;->getStartDMDLSession()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 75
    const/4 v0, 0x1

    .line 80
    :cond_3
    invoke-static {}, Lcom/asus/dm/DMConfig;->isAllowFotaPolling()Z

    move-result v10

    if-nez v10, :cond_6

    .line 81
    const-string v10, "===== no allow fota polling"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 114
    :goto_2
    if-eqz v0, :cond_b

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Start DM Service"

    invoke-static {v10, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 122
    :goto_3
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v10}, Lcom/asus/dm/DMCRegistryManager;->getState()Lcom/asus/dm/DMClient$DMClientState;

    move-result-object v10

    sget-object v11, Lcom/asus/dm/DMClient$DMClientState;->CONFIRM_UPDATE_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

    if-ne v10, v11, :cond_4

    .line 123
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcom/asus/dm/BootCompletedReceiver;->setAlarmService(Landroid/content/Context;)V

    :cond_4
    move v10, v0

    .line 125
    goto :goto_0

    .line 64
    :cond_5
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v10}, Lcom/asus/dm/DMCRegistryManager;->getFotaResult()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 65
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v10}, Lcom/asus/dm/DMCRegistryManager;->getFotaResult()I

    move-result v9

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkFotaUpgradeStatus2: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v10, "com.asus.dm.fota.upgradestatus"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-static {}, Lcom/asus/dm/fota/UnPack;->deleteUpdates()V

    goto :goto_1

    .line 82
    :cond_6
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v10}, Lcom/asus/dm/DMCRegistryManager;->getFotaPollingInterval()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v10, v12

    if-nez v10, :cond_7

    .line 83
    const-string v10, "===== over 18 month, no fota polling @receiveBootComplete()"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 84
    invoke-direct {p0}, Lcom/asus/dm/BootCompletedReceiver;->checkPollingTime()V

    goto :goto_2

    .line 86
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 87
    .local v1, currentTime:J
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v10}, Lcom/asus/dm/DMCRegistryManager;->getLastFotaPollingTime()J

    move-result-wide v5

    .line 89
    .local v5, lastFotaPollingTime:J
    const-wide/16 v10, -0x1

    cmp-long v10, v5, v10

    if-nez v10, :cond_8

    .line 90
    move-wide v5, v1

    .line 91
    invoke-direct {p0, v1, v2}, Lcom/asus/dm/BootCompletedReceiver;->updateLastPollingTime(J)V

    .line 94
    :cond_8
    invoke-direct {p0, v1, v2, v5, v6}, Lcom/asus/dm/BootCompletedReceiver;->isFotaPollingTimeUp(JJ)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 95
    const-string v10, "===== FotaPollingTimeUp"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 96
    const/4 v0, 0x1

    .line 99
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/asus/dm/BootCompletedReceiver;->getPollingInterval()J

    move-result-wide v11

    add-long/2addr v11, v1

    invoke-direct {p0, v10, v11, v12}, Lcom/asus/dm/BootCompletedReceiver;->scheduleNextPolling(Landroid/content/Context;J)V

    .line 100
    const-string v10, "com.asus.dm.DMService.doFotaPolling"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 101
    :cond_9
    sub-long v10, v5, v1

    const-wide/32 v12, 0x19bfcc00

    cmp-long v10, v10, v12

    if-lez v10, :cond_a

    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v10}, Lcom/asus/dm/DMCRegistryManager;->getFotaPollingInterval()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 104
    .local v7, lastTime:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===== time changed: set lastpollingtime: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v7, v8}, Lcom/asus/dm/BootCompletedReceiver;->getTimeString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 105
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v10, v7, v8}, Lcom/asus/dm/DMCRegistryManager;->setLastFotaPollingTime(J)V

    .line 106
    const/4 v0, 0x1

    .line 107
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/asus/dm/BootCompletedReceiver;->getPollingInterval()J

    move-result-wide v11

    add-long/2addr v11, v7

    invoke-direct {p0, v10, v11, v12}, Lcom/asus/dm/BootCompletedReceiver;->scheduleNextPolling(Landroid/content/Context;J)V

    .line 108
    const-string v10, "com.asus.dm.DMService.doFotaPolling"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 110
    .end local v7           #lastTime:J
    :cond_a
    iget-object v10, p0, Lcom/asus/dm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/asus/dm/BootCompletedReceiver;->getPollingInterval()J

    move-result-wide v11

    add-long/2addr v11, v5

    invoke-direct {p0, v10, v11, v12}, Lcom/asus/dm/BootCompletedReceiver;->scheduleNextPolling(Landroid/content/Context;J)V

    goto/16 :goto_2

    .line 118
    .end local v1           #currentTime:J
    .end local v5           #lastFotaPollingTime:J
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "**NOT** Start DM Service"

    invoke-static {v10, v11}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private scheduleNextPolling(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "elapseTime"

    .prologue
    const/4 v5, 0x0

    .line 290
    if-eqz p1, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gez v3, :cond_1

    .line 291
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context == null || (elapseTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < 0) --> return"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 295
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===== scheduleNextPolling, time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2, p3}, Lcom/asus/dm/BootCompletedReceiver;->getTimeString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 297
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/asus/dm/BootCompletedReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.asus.dm.DMService.doFotaPolling"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 303
    .local v2, sender:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 304
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 305
    invoke-virtual {v0, v5, p2, p3, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setAlarmService(Landroid/content/Context;)V
    .locals 11
    .parameter "pContext"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 186
    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 187
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/asus/dm/DMService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v4, postIntent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9, v4, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 189
    .local v3, pendIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 191
    iget-object v5, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v5}, Lcom/asus/dm/DMCRegistryManager;->getNextPostTime()J

    move-result-wide v1

    .line 193
    .local v1, nextPostTime:J
    sget-boolean v5, Lcom/asus/dm/BootCompletedReceiver;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 195
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-lez v5, :cond_1

    .line 196
    iget-object v5, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v5, v1, v2}, Lcom/asus/dm/DMCRegistryManager;->setNextPostTime(J)V

    .line 197
    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 198
    const-string v5, "nextPostTime > System.currentTimeMillis()"

    invoke-static {p0, v5, v10}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x7530

    add-long/2addr v5, v7

    invoke-virtual {v0, v9, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 202
    const-string v5, "nextPostTime < System.currentTimeMillis()"

    invoke-static {p0, v5, v10}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateLastPollingTime(J)V
    .locals 4
    .parameter "time"

    .prologue
    .line 218
    iget-object v2, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v2}, Lcom/asus/dm/DMCRegistryManager;->getLastFotaPollingTime()J

    move-result-wide v0

    .line 219
    .local v0, lastFotaPollingTime:J
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===== updateLastPollingTime, time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/asus/dm/BootCompletedReceiver;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 221
    iget-object v2, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v2, p1, p2}, Lcom/asus/dm/DMCRegistryManager;->setLastFotaPollingTime(J)V

    .line 223
    :cond_0
    return-void
.end method

.method private updatePollingCount()V
    .locals 5

    .prologue
    .line 226
    iget-object v2, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v2}, Lcom/asus/dm/DMCRegistryManager;->getFotaPollingCount()J

    move-result-wide v0

    .line 227
    .local v0, count:J
    iget-object v2, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/asus/dm/DMCRegistryManager;->setFotaPollingCount(J)V

    .line 228
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "pContext"
    .parameter "pIntent"

    .prologue
    const/4 v10, 0x1

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "===== BCReceiver: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/asus/dm/BootCompletedReceiver;->isPhoneReadyToUse(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-static {p1}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    .line 138
    if-eqz p2, :cond_0

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.asus.dm.DMService.delayBootCompleted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 142
    :cond_2
    iput-object p1, p0, Lcom/asus/dm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/asus/dm/BootCompletedReceiver;->receiveBootComplete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 147
    .local v5, startService:Z
    if-nez v5, :cond_3

    .line 160
    .end local v5           #startService:Z
    :goto_1
    const-string v6, "exit onReceive"

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .restart local v5       #startService:Z
    :cond_3
    :try_start_1
    const-string v6, "start service"

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 155
    .end local v5           #startService:Z
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 156
    .local v3, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ReceiveBootComplete error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    const-string v6, "com.asus.dm.DMService.doFotaPolling"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===== intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v10}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 164
    invoke-static {}, Lcom/asus/dm/DMConfig;->isAllowFotaPolling()Z

    move-result v6

    if-nez v6, :cond_5

    .line 165
    const-string v6, "===== no allow fota polling"

    invoke-static {p0, v6, v10}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 166
    :cond_5
    iget-object v6, p0, Lcom/asus/dm/BootCompletedReceiver;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v6}, Lcom/asus/dm/DMCRegistryManager;->getFotaPollingInterval()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 167
    const-string v6, "===== over 18 month, no fota polling @onReceive()"

    invoke-static {p0, v6, v10}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 168
    invoke-direct {p0}, Lcom/asus/dm/BootCompletedReceiver;->checkPollingTime()V

    goto/16 :goto_0

    .line 170
    :cond_6
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/asus/dm/DMService;

    invoke-direct {v4, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v4, i:Landroid/content/Intent;
    const-string v6, "com.asus.dm.DMService.doFotaPolling"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 174
    .local v1, currentTime:J
    invoke-direct {p0, v1, v2}, Lcom/asus/dm/BootCompletedReceiver;->updateLastPollingTime(J)V

    .line 175
    invoke-direct {p0}, Lcom/asus/dm/BootCompletedReceiver;->getPollingInterval()J

    move-result-wide v6

    add-long/2addr v6, v1

    invoke-direct {p0, p1, v6, v7}, Lcom/asus/dm/BootCompletedReceiver;->scheduleNextPolling(Landroid/content/Context;J)V

    .line 176
    invoke-direct {p0}, Lcom/asus/dm/BootCompletedReceiver;->updatePollingCount()V

    goto/16 :goto_0
.end method
