.class public Lcom/asus/cm/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# static fields
.field public static final DELAY_BOOT_COUNT:Ljava/lang/String; = "com.asud.cm.extra.delayCount"

.field public static final FROM_BOOTCOMPLETE:Ljava/lang/String; = "com.asud.cm.fromBootComplete"

.field private static final IS_DEBUG:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelayBootCompletedPeriod:I

.field private mRegMgr:Lcom/asus/cm/CMCRegistryManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    const/16 v0, 0x7530

    iput v0, p0, Lcom/asus/cm/BootCompletedReceiver;->mDelayBootCompletedPeriod:I

    return-void
.end method

.method private delayBootCompleted(Landroid/content/Context;JI)V
    .locals 6
    .parameter "context"
    .parameter "timeMillis"
    .parameter "retryCnt"

    .prologue
    const/4 v5, 0x0

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===== delayBootComplete to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2, p3}, Lcom/asus/cm/BootCompletedReceiver;->getTimeString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 121
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/asus/cm/BootCompletedReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.asus.dm.DMService.delayBootCompleted"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v3, "com.asud.cm.extra.delayCount"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const/high16 v3, 0x800

    invoke-static {p1, v5, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 126
    .local v2, sender:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 127
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v5, p2, p3, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 128
    return-void
.end method

.method private getTimeString(J)Ljava/lang/String;
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 116
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isPhoneReadyToUse(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .parameter "context"
    .parameter "pIntent"

    .prologue
    .line 102
    invoke-static {p1}, Lcom/asus/cm/util/UniqueId;->getInstances(Landroid/content/Context;)Lcom/asus/cm/util/UniqueId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/cm/util/UniqueId;->isReadToUse()Z

    move-result v1

    .line 103
    .local v1, isReady:Z
    if-nez v1, :cond_0

    .line 104
    if-eqz p2, :cond_0

    .line 105
    const-string v2, "com.asud.cm.extra.delayCount"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 106
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

    invoke-static {p0, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/asus/cm/BootCompletedReceiver;->mDelayBootCompletedPeriod:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/asus/cm/BootCompletedReceiver;->delayBootCompleted(Landroid/content/Context;JI)V

    .line 112
    .end local v0           #cnt:I
    :cond_0
    return v1
.end method

.method private receiveBootComplete()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 32
    const/4 v0, 0x0

    .line 35
    .local v0, createDMSession:Z
    iget-object v3, p0, Lcom/asus/cm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/asus/cm/c2dm/C2DMessaging;->getC2dmSendRegIdStatus(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/asus/cm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    const-class v4, Lcom/asus/cm/c2dm/C2DMReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    iget-object v3, p0, Lcom/asus/cm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/asus/cm/BootCompletedReceiver;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v3}, Lcom/asus/cm/CMCRegistryManager;->getDMVersion()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 42
    const/4 v0, 0x1

    .line 44
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/asus/cm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    const-class v4, Lcom/asus/cm/CMService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.asud.cm.fromBootComplete"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Start CM Service"

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v3, p0, Lcom/asus/cm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 54
    :goto_0
    iget-object v3, p0, Lcom/asus/cm/BootCompletedReceiver;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v3}, Lcom/asus/cm/CMCRegistryManager;->getLawmoState()Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    move-result-object v3

    sget-object v4, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->Partially_Locked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    if-ne v3, v4, :cond_2

    .line 55
    const/4 v0, 0x1

    .line 56
    iget-object v3, p0, Lcom/asus/cm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 59
    :cond_2
    return v0

    .line 51
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "**NOT** Start CM Service"

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "pContext"
    .parameter "pIntent"

    .prologue
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===== BCReceiver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/asus/cm/BootCompletedReceiver;->isPhoneReadyToUse(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {p1}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/cm/BootCompletedReceiver;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    .line 71
    const-string v3, "wifi-only"

    const-string v4, "ro.carrier"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/asus/cm/BootCompletedReceiver;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v3}, Lcom/asus/cm/CMCRegistryManager;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 73
    invoke-static {p1}, Lcom/asus/cm/util/UniqueId;->getInstances(Landroid/content/Context;)Lcom/asus/cm/util/UniqueId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/cm/util/UniqueId;->getId()Ljava/lang/String;

    .line 75
    :cond_2
    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.asus.dm.DMService.delayBootCompleted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    :cond_3
    iput-object p1, p0, Lcom/asus/cm/BootCompletedReceiver;->mContext:Landroid/content/Context;

    .line 83
    :try_start_0
    invoke-direct {p0}, Lcom/asus/cm/BootCompletedReceiver;->receiveBootComplete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 84
    .local v2, startService:Z
    if-nez v2, :cond_4

    .line 96
    .end local v2           #startService:Z
    :goto_1
    const-string v3, "exit onReceive"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .restart local v2       #startService:Z
    :cond_4
    :try_start_1
    const-string v3, "start service"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 92
    .end local v2           #startService:Z
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 93
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReceiveBootComplete error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
