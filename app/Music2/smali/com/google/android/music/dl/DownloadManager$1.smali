.class Lcom/google/android/music/dl/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/DownloadManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager$1;->this$0:Lcom/google/android/music/dl/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDoNotDeletes()Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager$1;->this$0:Lcom/google/android/music/dl/DownloadManager;

    invoke-static {v3}, Lcom/google/android/music/dl/DownloadManager;->access$000(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 180
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$1;->this$0:Lcom/google/android/music/dl/DownloadManager;

    invoke-static {v4}, Lcom/google/android/music/dl/DownloadManager;->access$000(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 181
    .local v2, ret:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$1;->this$0:Lcom/google/android/music/dl/DownloadManager;

    invoke-static {v4}, Lcom/google/android/music/dl/DownloadManager;->access$000(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadOrder;

    .line 182
    .local v1, order:Lcom/google/android/music/dl/DownloadOrder;
    iget-wide v4, v1, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #order:Lcom/google/android/music/dl/DownloadOrder;
    .end local v2           #ret:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 184
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #ret:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method
