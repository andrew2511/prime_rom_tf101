.class Lcom/google/android/music/dl/KeepOnNotificationManager$2;
.super Ljava/lang/Object;
.source "KeepOnNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/KeepOnNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/KeepOnNotificationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$2;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 5

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$2;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-static {v1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->access$200(Lcom/google/android/music/dl/KeepOnNotificationManager;)Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->getTotalNeedToKeepOn()Landroid/util/Pair;

    move-result-object v0

    .line 301
    .local v0, downloadInfo:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v0, :cond_1

    .line 302
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$2;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/music/dl/KeepOnNotificationManager;->access$302(Lcom/google/android/music/dl/KeepOnNotificationManager;I)I

    .line 303
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$2;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/music/dl/KeepOnNotificationManager;->access$402(Lcom/google/android/music/dl/KeepOnNotificationManager;J)J

    .line 308
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$2;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-static {v1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->access$500(Lcom/google/android/music/dl/KeepOnNotificationManager;)Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    .line 309
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$2;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/music/dl/KeepOnNotificationManager;->access$602(Lcom/google/android/music/dl/KeepOnNotificationManager;J)J

    .line 310
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$2;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/music/dl/KeepOnNotificationManager;->access$702(Lcom/google/android/music/dl/KeepOnNotificationManager;Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadOrder;

    .line 312
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$2;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-static {v1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->access$300(Lcom/google/android/music/dl/KeepOnNotificationManager;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$2;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-static {v1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->access$800(Lcom/google/android/music/dl/KeepOnNotificationManager;)Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DONE:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    if-eq v1, v2, :cond_0

    .line 313
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$2;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-static {v1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->access$900(Lcom/google/android/music/dl/KeepOnNotificationManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_0
    monitor-exit p0

    return-void

    .line 305
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$2;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->access$302(Lcom/google/android/music/dl/KeepOnNotificationManager;I)I

    .line 306
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager$2;->this$0:Lcom/google/android/music/dl/KeepOnNotificationManager;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/music/dl/KeepOnNotificationManager;->access$402(Lcom/google/android/music/dl/KeepOnNotificationManager;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 300
    .end local v0           #downloadInfo:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
