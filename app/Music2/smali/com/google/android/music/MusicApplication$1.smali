.class Lcom/google/android/music/MusicApplication$1;
.super Ljava/lang/Object;
.source "MusicApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicApplication;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    iget-object v2, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    invoke-static {v2}, Lcom/google/android/music/MusicApplication;->access$000(Lcom/google/android/music/MusicApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    monitor-enter v2

    .line 57
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    invoke-static {v3}, Lcom/google/android/music/MusicApplication;->access$000(Lcom/google/android/music/MusicApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 58
    new-instance v1, Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    invoke-direct {v1, v3}, Lcom/google/android/music/jumper/MusicPreferences;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, preferences:Lcom/google/android/music/jumper/MusicPreferences;
    iget-object v3, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    invoke-static {v3}, Lcom/google/android/music/MusicApplication;->access$000(Lcom/google/android/music/MusicApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 60
    iget-object v3, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    invoke-static {v3}, Lcom/google/android/music/MusicApplication;->access$000(Lcom/google/android/music/MusicApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 63
    .end local v1           #preferences:Lcom/google/android/music/jumper/MusicPreferences;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v2, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    invoke-static {v2}, Lcom/google/android/music/MusicApplication;->access$100(Lcom/google/android/music/MusicApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    monitor-enter v2

    .line 67
    :try_start_1
    iget-object v3, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    invoke-static {v3}, Lcom/google/android/music/MusicApplication;->access$100(Lcom/google/android/music/MusicApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/NetworkMonitor;

    .line 68
    .local v0, networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    if-nez v0, :cond_1

    .line 69
    new-instance v0, Lcom/google/android/music/dl/NetworkMonitor;

    .end local v0           #networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    iget-object v3, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    invoke-direct {v0, v3}, Lcom/google/android/music/dl/NetworkMonitor;-><init>(Landroid/content/Context;)V

    .line 70
    .restart local v0       #networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    iget-object v3, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    invoke-static {v3}, Lcom/google/android/music/MusicApplication;->access$100(Lcom/google/android/music/MusicApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 71
    iget-object v3, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    invoke-static {v3}, Lcom/google/android/music/MusicApplication;->access$100(Lcom/google/android/music/MusicApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 73
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    iget-object v2, p0, Lcom/google/android/music/MusicApplication$1;->this$0:Lcom/google/android/music/MusicApplication;

    invoke-static {v2}, Lcom/google/android/music/MusicApplication;->access$000(Lcom/google/android/music/MusicApplication;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->clearSyncForUnselectedAccounts()V

    .line 78
    return-void

    .line 63
    .end local v0           #networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    .restart local p0
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 73
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method
