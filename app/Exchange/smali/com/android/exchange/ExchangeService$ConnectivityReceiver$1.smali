.class Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;
.super Landroid/os/AsyncTask;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$ConnectivityReceiver;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1538
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->this$1:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    iput-object p2, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1538
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "params"

    .prologue
    .line 1540
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExchangeService doInBackground Thread id :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1541
    iget-object v7, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1542
    iget-object v7, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1543
    .local v2, b:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 1544
    const-string v7, "networkInfo"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1545
    .local v0, a:Landroid/net/NetworkInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connectivity alert for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1546
    .local v5, info:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 1547
    .local v6, state:Landroid/net/NetworkInfo$State;
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_1

    .line 1548
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " CONNECTED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1549
    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1550
    sget-object v7, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1551
    :try_start_0
    sget-object v8, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 1552
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1553
    const-string v7, "connected"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1578
    .end local v0           #a:Landroid/net/NetworkInfo;
    .end local v2           #b:Landroid/os/Bundle;
    .end local v5           #info:Ljava/lang/String;
    .end local v6           #state:Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    return-object v7

    .line 1552
    .restart local v0       #a:Landroid/net/NetworkInfo;
    .restart local v2       #b:Landroid/os/Bundle;
    .restart local v5       #info:Ljava/lang/String;
    .restart local v6       #state:Landroid/net/NetworkInfo$State;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1554
    :cond_1
    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_0

    .line 1555
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " DISCONNECTED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1556
    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1557
    const-string v7, "disconnected"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 1560
    .end local v0           #a:Landroid/net/NetworkInfo;
    .end local v2           #b:Landroid/os/Bundle;
    .end local v5           #info:Ljava/lang/String;
    .end local v6           #state:Landroid/net/NetworkInfo$State;
    :cond_2
    iget-object v7, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1562
    iget-object v7, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->this$1:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    iget-object v7, v7, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->this$0:Lcom/android/exchange/ExchangeService;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 1564
    .local v3, cm:Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->this$1:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    iget-object v7, v7, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/exchange/ExchangeService;->access$1202(Lcom/android/exchange/ExchangeService;Z)Z

    .line 1566
    iget-object v7, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->this$1:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    iget-object v7, v7, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->access$1200(Lcom/android/exchange/ExchangeService;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1567
    const-string v7, "background data on"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1568
    const-string v7, "Background data on; restart syncs"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1571
    :cond_3
    const-string v7, "Background data off: stop all syncs"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1572
    iget-object v7, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->this$1:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    iget-object v7, v7, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v7, v7, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v7

    .line 1573
    :try_start_2
    iget-object v8, p0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->this$1:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    iget-object v8, v8, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v8, v8, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v8}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1574
    .local v1, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-wide v8, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v8, v9}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(J)V

    goto :goto_1

    .line 1575
    .end local v1           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v8

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1538
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/ExchangeService$ConnectivityReceiver$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExchangeService onPostExecute Thread id :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1582
    return-void
.end method
