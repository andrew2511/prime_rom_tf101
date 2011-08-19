.class Lcom/google/android/music/MusicPlaybackService$17;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->next(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1723
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-boolean p2, p0, Lcom/google/android/music/MusicPlaybackService$17;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1727
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2000(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1728
    const-string v0, "MediaPlaybackService"

    const-string v1, "No play queue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1795
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1797
    :goto_0
    return-void

    .line 1734
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$700(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1735
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3100(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$700(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1737
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3100(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v4, :cond_2

    .line 1738
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3100(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1741
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3700(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 1742
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3000(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1743
    :try_start_2
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2000(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v0

    if-le v0, v4, :cond_3

    .line 1744
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3000(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$3300(Lcom/google/android/music/MusicPlaybackService;Ljava/util/Vector;)V

    .line 1746
    :cond_3
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3000(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 1748
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1300(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->val$force:Z

    if-nez v0, :cond_4

    .line 1750
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3900(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1751
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$1202(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 1752
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v2, "com.android.music.playbackcomplete"

    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$100(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 1753
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v2, "com.android.music.playstatechanged"

    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$100(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 1754
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1795
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1755
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1300(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-eq v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->val$force:Z

    if-eqz v0, :cond_7

    .line 1756
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3000(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$3300(Lcom/google/android/music/MusicPlaybackService;Ljava/util/Vector;)V

    .line 1766
    :cond_6
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3000(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 1767
    const-string v0, "MediaPlaybackService"

    const-string v2, "Failed to fill future in next()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1795
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1762
    :cond_7
    :try_start_4
    const-string v0, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shouldn\'t be here, repeat mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$1300(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1795
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1770
    :cond_8
    :try_start_5
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3000(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/android/music/MusicPlaybackService;->access$702(Lcom/google/android/music/MusicPlaybackService;I)I

    .line 1771
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3400(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1772
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1790
    :cond_9
    :goto_1
    :try_start_6
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3200(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1791
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$3800(Lcom/google/android/music/MusicPlaybackService;Z)V

    .line 1792
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$502(Lcom/google/android/music/MusicPlaybackService;J)J

    .line 1793
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService$17;->val$force:Z

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1795
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1772
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1795
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 1774
    :cond_a
    :try_start_9
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$700(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2000(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_d

    .line 1776
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1300(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->val$force:Z

    if-nez v0, :cond_b

    .line 1778
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3900(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1779
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$1202(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 1780
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v1, "com.android.music.playbackcomplete"

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$100(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 1781
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v1, "com.android.music.playstatechanged"

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$100(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1795
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1783
    :cond_b
    :try_start_a
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1300(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-eq v0, v3, :cond_c

    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->val$force:Z

    if-eqz v0, :cond_9

    .line 1784
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$702(Lcom/google/android/music/MusicPlaybackService;I)I

    goto/16 :goto_1

    .line 1787
    :cond_d
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$17;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$708(Lcom/google/android/music/MusicPlaybackService;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1
.end method
