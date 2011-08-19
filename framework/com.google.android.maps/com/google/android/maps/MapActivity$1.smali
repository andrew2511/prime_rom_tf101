.class Lcom/google/android/maps/MapActivity$1;
.super Landroid/os/Handler;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/maps/MapActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "message"

    .prologue
    .line 356
    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #getter for: Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->access$000(Lcom/google/android/maps/MapActivity;)Lcom/google/android/maps/NetworkConnectivityListener;

    move-result-object v5

    if-nez v5, :cond_9

    .line 388
    :goto_8
    return-void

    .line 360
    :cond_9
    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #getter for: Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->access$000(Lcom/google/android/maps/MapActivity;)Lcom/google/android/maps/NetworkConnectivityListener;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/NetworkConnectivityListener;->getState()Lcom/google/android/maps/NetworkConnectivityListener$State;

    move-result-object v4

    .line 361
    .local v4, state:Lcom/google/android/maps/NetworkConnectivityListener$State;
    const-string v5, "MapActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handling network change notification:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/maps/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #getter for: Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->access$100(Lcom/google/android/maps/MapActivity;)Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v5

    if-eqz v5, :cond_4d

    .line 363
    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #getter for: Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->access$100(Lcom/google/android/maps/MapActivity;)Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v5

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->stop()V

    .line 364
    sget-object v5, Lcom/google/android/maps/NetworkConnectivityListener$State;->CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

    if-ne v4, v5, :cond_4d

    .line 365
    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #getter for: Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->access$100(Lcom/google/android/maps/MapActivity;)Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v5

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->start()V

    .line 369
    :cond_4d
    :try_start_4d
    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #getter for: Lcom/google/android/maps/MapActivity;->mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->access$200(Lcom/google/android/maps/MapActivity;)Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    move-result-object v5

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    move-result-object v2

    .line 370
    .local v2, factory:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;
    if-nez v2, :cond_6b

    .line 371
    const-string v5, "MapActivity"

    const-string v6, "Couldn\'t get connection factory"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_60} :catch_61

    goto :goto_8

    .line 385
    .end local v2           #factory:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;
    :catch_61
    move-exception v5

    move-object v1, v5

    .line 386
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MapActivity"

    const-string v6, "Couldn\'t reset connection pool."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 374
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #factory:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;
    :cond_6b
    :try_start_6b
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->getClient()Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    move-result-object v0

    .line 375
    .local v0, client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;
    if-nez v0, :cond_79

    .line 376
    const-string v5, "MapActivity"

    const-string v6, "Couldn\'t get connection factory client"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 379
    :cond_79
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    .line 380
    .local v3, manager:Lorg/apache/http/conn/ClientConnectionManager;
    if-nez v3, :cond_87

    .line 381
    const-string v5, "MapActivity"

    const-string v6, "Couldn\'t get client connection manager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 384
    :cond_87
    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v5, v6, v7}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_8e} :catch_61

    goto/16 :goto_8
.end method
