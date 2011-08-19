.class Lcom/google/android/music/MusicPlaybackService$16;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->prev()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1673
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1677
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->position()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1678
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/MusicPlaybackService;->seek(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1712
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1714
    :goto_0
    return-void

    .line 1681
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3700(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 1683
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3000(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1684
    :try_start_2
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3100(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1685
    .local v0, histsize:I
    if-nez v0, :cond_1

    .line 1687
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v4}, Lcom/google/android/music/MusicPlaybackService;->access$3100(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/music/MusicPlaybackService;->access$3300(Lcom/google/android/music/MusicPlaybackService;Ljava/util/Vector;)V

    .line 1688
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3100(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1689
    if-nez v0, :cond_1

    .line 1690
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1712
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1693
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$700(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 1694
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3000(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v5}, Lcom/google/android/music/MusicPlaybackService;->access$700(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 1696
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3100(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    sub-int v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1697
    .local v1, pos:I
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2, v1}, Lcom/google/android/music/MusicPlaybackService;->access$702(Lcom/google/android/music/MusicPlaybackService;I)I

    .line 1698
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3400(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1699
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1707
    .end local v0           #histsize:I
    .end local v1           #pos:I
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3200(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1708
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/music/MusicPlaybackService;->access$3800(Lcom/google/android/music/MusicPlaybackService;Z)V

    .line 1709
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/google/android/music/MusicPlaybackService;->access$502(Lcom/google/android/music/MusicPlaybackService;J)J

    .line 1710
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1712
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1699
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1712
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 1701
    :cond_3
    :try_start_7
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$700(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v2

    if-lez v2, :cond_4

    .line 1702
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$710(Lcom/google/android/music/MusicPlaybackService;)I

    goto :goto_1

    .line 1704
    :cond_4
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$16;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$2000(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-static {v2, v3}, Lcom/google/android/music/MusicPlaybackService;->access$702(Lcom/google/android/music/MusicPlaybackService;I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1
.end method
