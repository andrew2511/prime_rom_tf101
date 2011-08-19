.class Lcom/asus/cm/CMService$RetryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/CMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryBroadcastReceiver"
.end annotation


# static fields
.field public static final ACTION_RETRY:Ljava/lang/String; = "com.asus.dm.DMService.RetryBroadcastReceiver.retry"


# instance fields
.field final synthetic this$0:Lcom/asus/cm/CMService;

.field private waittime:[J


# direct methods
.method public constructor <init>(Lcom/asus/cm/CMService;)V
    .locals 2
    .parameter

    .prologue
    .line 2006
    iput-object p1, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2000
    const/16 v0, 0x11

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->waittime:[J

    .line 2007
    const-string v0, "TMO"

    const-string v1, "ro.product.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2008
    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->waittime:[J

    .line 2013
    :cond_0
    return-void

    .line 2000
    :array_0
    .array-data 0x8
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xa9t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xeet 0x36t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xa8t 0x12t 0x1t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x51t 0x25t 0x2t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xa2t 0x4at 0x4t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 2008
    :array_1
    .array-data 0x8
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xa9t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xeet 0x36t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xa8t 0x12t 0x1t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x51t 0x25t 0x2t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xa2t 0x4at 0x4t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$400(Lcom/asus/cm/CMService$RetryBroadcastReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1994
    invoke-direct {p0}, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->setRetryAlarm()V

    return-void
.end method

.method static synthetic access$800(Lcom/asus/cm/CMService$RetryBroadcastReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1994
    invoke-direct {p0}, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->cancelRetryAlarm()V

    return-void
.end method

.method private cancelRetryAlarm()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2081
    const-string v2, "cancelRetryAlarm....."

    invoke-static {p0, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2085
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.dm.DMService.RetryBroadcastReceiver.retry"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2086
    .local v1, postIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    invoke-virtual {v2}, Lcom/asus/cm/CMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2088
    .local v0, pendIntent:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2089
    return-void
.end method

.method private setRetryAlarm()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2058
    const-string v6, "setRetryAlarm"

    invoke-static {p0, v6}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2059
    iget-object v6, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v6}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/cm/CMCRegistryManager;->getRetryCount()I

    move-result v5

    .line 2061
    .local v5, retryCnt:I
    iget-object v6, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2062
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.asus.dm.DMService.RetryBroadcastReceiver.retry"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2063
    .local v4, postIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    invoke-virtual {v6}, Lcom/asus/cm/CMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2065
    .local v3, pendIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2068
    iget-object v6, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->waittime:[J

    array-length v6, v6

    if-lt v5, v6, :cond_0

    .line 2069
    iget-object v6, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->waittime:[J

    array-length v6, v6

    const/4 v7, 0x1

    sub-int v5, v6, v7

    .line 2073
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wait "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->waittime:[J

    aget-wide v7, v7, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2074
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->waittime:[J

    aget-wide v8, v8, v5

    add-long v1, v6, v8

    .line 2076
    .local v1, nextRetryTime:J
    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2078
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2027
    iget-object v3, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/cm/CMCRegistryManager;->getRetryCount()I

    move-result v2

    .line 2028
    .local v2, retryCnt:I
    iget-object v3, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RetryBrocastReceiver.onReceive mRetryCnt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2029
    add-int/lit8 v2, v2, 0x1

    .line 2030
    iget-object v3, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/asus/cm/CMCRegistryManager;->setRetryCount(I)V

    .line 2032
    iget-object v3, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->waittime:[J

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 2035
    :try_start_0
    iget-object v3, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Lcom/asus/cm/CMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 2037
    .local v1, pm:Landroid/os/PowerManager;
    iget-object v3, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$2900(Lcom/asus/cm/CMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2038
    iget-object v3, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    const/4 v4, 0x1

    const-string v5, "DMService"

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/cm/CMService;->access$2902(Lcom/asus/cm/CMService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 2040
    iget-object v3, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$2900(Lcom/asus/cm/CMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2041
    iget-object v3, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$2900(Lcom/asus/cm/CMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2042
    const-string v3, "===== acquire wake_lock"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2044
    :cond_0
    iget-object v3, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$1700(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMService$CMSystemService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/cm/CMService$CMSystemService;->doDMSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2055
    .end local v1           #pm:Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 2045
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2046
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2050
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    .line 2051
    iget-object v3, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/asus/cm/CMCRegistryManager;->setRetryCount(I)V

    .line 2052
    const-string v3, "abort"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reachMaxRetryCnt()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2017
    iget-object v0, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/cm/CMCRegistryManager;->getRetryCount()I

    move-result v0

    iget-object v1, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->waittime:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/asus/cm/CMService$RetryBroadcastReceiver;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/asus/cm/CMCRegistryManager;->setRetryCount(I)V

    .line 2019
    const/4 v0, 0x1

    .line 2021
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method
