.class Lcom/asus/dm/DMService$RetryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/DMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryBroadcastReceiver"
.end annotation


# static fields
.field public static final ACTION_RETRY:Ljava/lang/String; = "com.asus.dm.DMService.RetryBroadcastReceiver.retry"


# instance fields
.field final synthetic this$0:Lcom/asus/dm/DMService;

.field private waittime:[J


# direct methods
.method public constructor <init>(Lcom/asus/dm/DMService;)V
    .locals 2
    .parameter

    .prologue
    .line 1812
    iput-object p1, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1806
    const/16 v0, 0x11

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->waittime:[J

    .line 1813
    const-string v0, "TMO"

    const-string v1, "ro.product.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1814
    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->waittime:[J

    .line 1819
    :cond_0
    return-void

    .line 1806
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

    .line 1814
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

.method static synthetic access$400(Lcom/asus/dm/DMService$RetryBroadcastReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1800
    invoke-direct {p0}, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->setRetryAlarm()V

    return-void
.end method

.method static synthetic access$800(Lcom/asus/dm/DMService$RetryBroadcastReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1800
    invoke-direct {p0}, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->cancelRetryAlarm()V

    return-void
.end method

.method private cancelRetryAlarm()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1887
    const-string v2, "cancelRetryAlarm....."

    invoke-static {p0, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1891
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.dm.DMService.RetryBroadcastReceiver.retry"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1892
    .local v1, postIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    invoke-virtual {v2}, Lcom/asus/dm/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1894
    .local v0, pendIntent:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/asus/dm/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1895
    return-void
.end method

.method private setRetryAlarm()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1864
    const-string v6, "setRetryAlarm"

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1865
    iget-object v6, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v6}, Lcom/asus/dm/DMService;->access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/dm/DMCRegistryManager;->getRetryCount()I

    move-result v5

    .line 1867
    .local v5, retryCnt:I
    iget-object v6, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Lcom/asus/dm/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1868
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.asus.dm.DMService.RetryBroadcastReceiver.retry"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1869
    .local v4, postIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    invoke-virtual {v6}, Lcom/asus/dm/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1871
    .local v3, pendIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1874
    iget-object v6, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->waittime:[J

    array-length v6, v6

    if-lt v5, v6, :cond_0

    .line 1875
    iget-object v6, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->waittime:[J

    array-length v6, v6

    const/4 v7, 0x1

    sub-int v5, v6, v7

    .line 1879
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wait "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->waittime:[J

    aget-wide v7, v7, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1880
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->waittime:[J

    aget-wide v8, v8, v5

    add-long v1, v6, v8

    .line 1882
    .local v1, nextRetryTime:J
    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1884
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1833
    iget-object v3, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/dm/DMCRegistryManager;->getRetryCount()I

    move-result v2

    .line 1834
    .local v2, retryCnt:I
    iget-object v3, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RetryBrocastReceiver.onReceive mRetryCnt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1835
    add-int/lit8 v2, v2, 0x1

    .line 1836
    iget-object v3, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/asus/dm/DMCRegistryManager;->setRetryCount(I)V

    .line 1838
    iget-object v3, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->waittime:[J

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1841
    :try_start_0
    iget-object v3, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Lcom/asus/dm/DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1843
    .local v1, pm:Landroid/os/PowerManager;
    iget-object v3, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$2400(Lcom/asus/dm/DMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1844
    iget-object v3, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    const/4 v4, 0x1

    const-string v5, "DMService"

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dm/DMService;->access$2402(Lcom/asus/dm/DMService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 1846
    iget-object v3, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$2400(Lcom/asus/dm/DMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1847
    iget-object v3, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$2400(Lcom/asus/dm/DMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1848
    const-string v3, "===== acquire wake_lock"

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1850
    :cond_0
    iget-object v3, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$1600(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMService$DMSystemService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/dm/DMService$DMSystemService;->doDMSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1861
    .end local v1           #pm:Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 1851
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1852
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1856
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    .line 1857
    iget-object v3, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/asus/dm/DMCRegistryManager;->setRetryCount(I)V

    .line 1858
    const-string v3, "abort"

    invoke-static {p0, v3}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reachMaxRetryCnt()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1823
    iget-object v0, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dm/DMCRegistryManager;->getRetryCount()I

    move-result v0

    iget-object v1, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->waittime:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/asus/dm/DMService$RetryBroadcastReceiver;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v0}, Lcom/asus/dm/DMService;->access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/asus/dm/DMCRegistryManager;->setRetryCount(I)V

    .line 1825
    const/4 v0, 0x1

    .line 1827
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method
