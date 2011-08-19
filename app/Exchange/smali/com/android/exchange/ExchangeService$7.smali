.class Lcom/android/exchange/ExchangeService$7;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .locals 0
    .parameter

    .prologue
    .line 1773
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1777
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$900()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1779
    :try_start_1
    new-instance v3, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v4, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {v3, v4}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/emailcommon/service/AccountServiceProxy;->test()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1780
    const-string v3, "!!! Email application not found; stopping self"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1781
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v3}, Lcom/android/exchange/ExchangeService;->stopSelf()V

    .line 1783
    :cond_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1500()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-nez v3, :cond_2

    .line 1785
    :try_start_2
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1786
    .local v0, deviceId:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1787
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$1502(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1791
    .end local v0           #deviceId:Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1500()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1792
    const-string v3, "!!! deviceId unknown; stopping self and retrying"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1793
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v3}, Lcom/android/exchange/ExchangeService;->stopSelf()V

    .line 1795
    new-instance v3, Lcom/android/exchange/ExchangeService$7$1;

    invoke-direct {v3, p0}, Lcom/android/exchange/ExchangeService$7$1;-><init>(Lcom/android/exchange/ExchangeService$7;)V

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1805
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1830
    :goto_1
    invoke-static {v8}, Lcom/android/exchange/ExchangeService;->access$1302(Z)Z

    .line 1832
    return-void

    .line 1810
    :cond_2
    :try_start_4
    new-instance v3, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v4, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {v3, v4}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/emailcommon/service/AccountServiceProxy;->restoreAccountsIfNeeded()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1818
    :try_start_5
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v4, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v3, v4}, Lcom/android/exchange/ExchangeService;->access$800(Lcom/android/exchange/ExchangeService;Landroid/content/Context;)V

    .line 1820
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v3}, Lcom/android/exchange/ExchangeService;->maybeStartExchangeServiceThread()V

    .line 1821
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1600()Ljava/lang/Thread;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1822
    const-string v3, "!!! EAS ExchangeService, stopping self"

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1823
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v3}, Lcom/android/exchange/ExchangeService;->stopSelf()V

    .line 1828
    :cond_3
    :goto_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1830
    :catchall_1
    move-exception v2

    invoke-static {v8}, Lcom/android/exchange/ExchangeService;->access$1302(Z)Z

    throw v2

    .line 1812
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1814
    .local v1, e:Landroid/os/RemoteException;
    :try_start_7
    monitor-exit v2

    goto :goto_1

    .line 1824
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1826
    iget-object v3, p0, Lcom/android/exchange/ExchangeService$7;->this$0:Lcom/android/exchange/ExchangeService;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1388

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/exchange/ExchangeService;->access$1700(Lcom/android/exchange/ExchangeService;JJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 1789
    :catch_1
    move-exception v3

    goto :goto_0
.end method
