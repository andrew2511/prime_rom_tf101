.class Lcom/android/server/vpn/VpnService$1;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vpn/VpnService;->startConnectivityMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vpn/VpnService;


# direct methods
.method constructor <init>(Lcom/android/server/vpn/VpnService;)V
    .registers 2
    .parameter

    .prologue
    .line 313
    .local p0, this:Lcom/android/server/vpn/VpnService$1;,"Lcom/android/server/vpn/VpnService.1;"
    iput-object p1, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 315
    .local p0, this:Lcom/android/server/vpn/VpnService$1;,"Lcom/android/server/vpn/VpnService.1;"
    iget-object v7, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    #getter for: Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/vpn/VpnService;->access$100(Lcom/android/server/vpn/VpnService;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "VPN connectivity monitor running"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :try_start_b
    iget-object v7, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    #getter for: Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;
    invoke-static {v7}, Lcom/android/server/vpn/VpnService;->access$300(Lcom/android/server/vpn/VpnService;)Lcom/android/server/vpn/VpnService$NotificationHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    #getter for: Lcom/android/server/vpn/VpnService;->mStartTime:J
    invoke-static {v8}, Lcom/android/server/vpn/VpnService;->access$200(Lcom/android/server/vpn/VpnService;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/server/vpn/VpnService$NotificationHelper;->update(J)V

    .line 318
    const/16 v2, 0xa

    .line 319
    .local v2, i:I
    :goto_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 321
    .local v3, now:J
    if-nez v2, :cond_3e

    const/4 v7, 0x1

    move v1, v7

    .line 322
    .local v1, heavyCheck:Z
    :goto_24
    iget-object v7, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    monitor-enter v7
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_27} :catch_76

    .line 323
    :try_start_27
    iget-object v8, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    #getter for: Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;
    invoke-static {v8}, Lcom/android/server/vpn/VpnService;->access$400(Lcom/android/server/vpn/VpnService;)Landroid/net/vpn/VpnState;

    move-result-object v8

    sget-object v9, Landroid/net/vpn/VpnState;->CONNECTED:Landroid/net/vpn/VpnState;

    if-eq v8, v9, :cond_41

    monitor-exit v7
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_73

    .line 337
    .end local v1           #heavyCheck:Z
    .end local v2           #i:I
    .end local v3           #now:J
    :goto_32
    iget-object v7, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    #getter for: Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/vpn/VpnService;->access$100(Lcom/android/server/vpn/VpnService;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "VPN connectivity monitor stopped"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 321
    .restart local v2       #i:I
    .restart local v3       #now:J
    :cond_3e
    const/4 v7, 0x0

    move v1, v7

    goto :goto_24

    .line 324
    .restart local v1       #heavyCheck:Z
    :cond_41
    :try_start_41
    iget-object v8, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    #getter for: Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;
    invoke-static {v8}, Lcom/android/server/vpn/VpnService;->access$300(Lcom/android/server/vpn/VpnService;)Lcom/android/server/vpn/VpnService$NotificationHelper;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lcom/android/server/vpn/VpnService$NotificationHelper;->update(J)V

    .line 326
    if-eqz v1, :cond_5b

    .line 327
    const/16 v2, 0xa

    .line 328
    iget-object v8, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    #calls: Lcom/android/server/vpn/VpnService;->checkConnectivity()Z
    invoke-static {v8}, Lcom/android/server/vpn/VpnService;->access$500(Lcom/android/server/vpn/VpnService;)Z

    move-result v8

    if-eqz v8, :cond_5b

    iget-object v8, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    #calls: Lcom/android/server/vpn/VpnService;->checkDns()V
    invoke-static {v8}, Lcom/android/server/vpn/VpnService;->access$600(Lcom/android/server/vpn/VpnService;)V

    .line 330
    :cond_5b
    const-wide/16 v8, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long v5, v8, v3

    .line 331
    .local v5, t:J
    const-wide/16 v8, 0x64

    cmp-long v8, v5, v8

    if-lez v8, :cond_6f

    iget-object v8, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-virtual {v8, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 332
    :cond_6f
    monitor-exit v7

    .line 318
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 332
    .end local v5           #t:J
    :catchall_73
    move-exception v8

    monitor-exit v7
    :try_end_75
    .catchall {:try_start_41 .. :try_end_75} :catchall_73

    :try_start_75
    throw v8
    :try_end_76
    .catch Ljava/lang/InterruptedException; {:try_start_75 .. :try_end_76} :catch_76

    .line 334
    .end local v1           #heavyCheck:Z
    .end local v2           #i:I
    .end local v3           #now:J
    :catch_76
    move-exception v7

    move-object v0, v7

    .line 335
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v7, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    #calls: Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V
    invoke-static {v7, v0}, Lcom/android/server/vpn/VpnService;->access$700(Lcom/android/server/vpn/VpnService;Ljava/lang/Throwable;)V

    goto :goto_32
.end method
