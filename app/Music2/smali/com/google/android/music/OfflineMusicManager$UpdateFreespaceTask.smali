.class Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;
.super Ljava/lang/Object;
.source "OfflineMusicManager.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/OfflineMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateFreespaceTask"
.end annotation


# static fields
.field private static final TYPE_ALBUM:I = 0x1

.field private static final TYPE_PLAYLIST:I = 0x2


# instance fields
.field private mAdded:Z

.field private final mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I

.field final synthetic this$0:Lcom/google/android/music/OfflineMusicManager;


# direct methods
.method public constructor <init>(Lcom/google/android/music/OfflineMusicManager;Ljava/util/List;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "type"
    .parameter "added"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p2, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p2, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mIds:Ljava/util/List;

    .line 619
    iput p3, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mType:I

    .line 620
    iput-boolean p4, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mAdded:Z

    .line 621
    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    .line 624
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v7}, Lcom/google/android/music/OfflineMusicManager;->access$000(Lcom/google/android/music/OfflineMusicManager;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v4

    .line 626
    .local v4, store:Lcom/google/android/music/store/Store;
    const-wide/16 v5, 0x0

    .line 627
    .local v5, totalSize:J
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 628
    .local v2, id:J
    iget v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mType:I

    packed-switch v7, :pswitch_data_0

    .line 636
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 630
    :pswitch_0
    invoke-virtual {v4, v2, v3}, Lcom/google/android/music/store/Store;->getSizeToDownloadAlbum(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 631
    goto :goto_0

    .line 633
    :pswitch_1
    invoke-virtual {v4, v2, v3}, Lcom/google/android/music/store/Store;->getSizeToDownloadPlaylist(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 634
    goto :goto_0

    .line 640
    .end local v2           #id:J
    :cond_0
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v7}, Lcom/google/android/music/OfflineMusicManager;->access$1600(Lcom/google/android/music/OfflineMusicManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 641
    :try_start_0
    iget-object v8, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v8}, Lcom/google/android/music/OfflineMusicManager;->access$1900(Lcom/google/android/music/OfflineMusicManager;)J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-lez v8, :cond_2

    move v0, v10

    .line 642
    .local v0, freeSpaceAvailable:Z
    :goto_1
    iget-boolean v8, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->mAdded:Z

    if-eqz v8, :cond_3

    .line 643
    iget-object v8, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v8, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->access$1922(Lcom/google/android/music/OfflineMusicManager;J)J

    .line 644
    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v8}, Lcom/google/android/music/OfflineMusicManager;->access$1900(Lcom/google/android/music/OfflineMusicManager;)J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-gtz v8, :cond_1

    .line 645
    iget-object v8, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/google/android/music/OfflineMusicManager;->access$2102(Lcom/google/android/music/OfflineMusicManager;Z)Z

    .line 653
    :cond_1
    :goto_2
    monitor-exit v7

    .line 654
    return-void

    .line 641
    .end local v0           #freeSpaceAvailable:Z
    :cond_2
    const/4 v8, 0x0

    move v0, v8

    goto :goto_1

    .line 648
    .restart local v0       #freeSpaceAvailable:Z
    :cond_3
    iget-object v8, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v8, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->access$1914(Lcom/google/android/music/OfflineMusicManager;J)J

    .line 649
    if-nez v0, :cond_1

    iget-object v8, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v8}, Lcom/google/android/music/OfflineMusicManager;->access$1900(Lcom/google/android/music/OfflineMusicManager;)J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-lez v8, :cond_1

    .line 650
    iget-object v8, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/google/android/music/OfflineMusicManager;->access$2102(Lcom/google/android/music/OfflineMusicManager;Z)Z

    goto :goto_2

    .line 653
    .end local v0           #freeSpaceAvailable:Z
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 628
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public taskCompleted()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v0}, Lcom/google/android/music/OfflineMusicManager;->access$2000(Lcom/google/android/music/OfflineMusicManager;)V

    .line 658
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v0}, Lcom/google/android/music/OfflineMusicManager;->access$700(Lcom/google/android/music/OfflineMusicManager;)V

    .line 659
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v0}, Lcom/google/android/music/OfflineMusicManager;->access$200(Lcom/google/android/music/OfflineMusicManager;)V

    .line 660
    return-void
.end method
