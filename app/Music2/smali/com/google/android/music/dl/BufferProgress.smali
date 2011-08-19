.class public Lcom/google/android/music/dl/BufferProgress;
.super Ljava/lang/Object;
.source "BufferProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "BufferProgress"


# instance fields
.field private final mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

.field private mProgressListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/music/dl/IDownloadProgressListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVerboseProgressListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "BufferProgress"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/BufferProgress;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/DownloadManager;)V
    .locals 1
    .parameter "downloadManager"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/google/android/music/dl/BufferProgress;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    .line 33
    return-void
.end method

.method private notifyBufferProgress(JIFI)V
    .locals 10
    .parameter "songId"
    .parameter "state"
    .parameter "progress"
    .parameter "error"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/LinkedList;

    .line 49
    .local v9, storedListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    if-nez v9, :cond_1

    .line 50
    monitor-exit v1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8, v9}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 53
    .local v8, listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 61
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/IDownloadProgressListener;

    .local v0, listener:Lcom/google/android/music/dl/IDownloadProgressListener;
    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 64
    :try_start_1
    invoke-interface/range {v0 .. v5}, Lcom/google/android/music/dl/IDownloadProgressListener;->onDownloadProgress(JIFI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 65
    :catch_0
    move-exception v6

    .line 66
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "BufferProgress"

    const-string v2, "Error trying to notify of progress"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 53
    .end local v0           #listener:Lcom/google/android/music/dl/IDownloadProgressListener;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    .end local v8           #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    .end local v9           #storedListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 69
    .restart local v7       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    .restart local v8       #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    .restart local v9       #storedListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    :cond_2
    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private notifyVerboseProgressListeners(Lcom/google/android/music/dl/DownloadOrder;)V
    .locals 6
    .parameter "order"

    .prologue
    .line 126
    iget-object v3, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    monitor-enter v3

    .line 127
    :try_start_0
    iget-object v4, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .local v2, listener:Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;
    :try_start_1
    invoke-interface {v2, p1}, Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;->onDownloadProgress(Lcom/google/android/music/dl/DownloadOrder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "BufferProgress"

    const-string v5, "Error trying to notify of progress"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 134
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    return-void
.end method


# virtual methods
.method public addDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)Z
    .locals 9
    .parameter "songid"
    .parameter "listener"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 76
    const-string v0, "BufferProgress"

    const-string v1, "Listeners are not automatically removing themselves... possible leak"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/LinkedList;

    .line 80
    .local v7, listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    if-nez v7, :cond_1

    .line 81
    new-instance v7, Ljava/util/LinkedList;

    .end local v7           #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 82
    .restart local v7       #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_1
    invoke-virtual {v7, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgress;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/dl/DownloadManager;->getDownload(J)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v8

    .line 87
    .local v8, order:Lcom/google/android/music/dl/DownloadOrder;
    if-eqz v8, :cond_2

    .line 89
    :try_start_1
    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->ordinal()I

    move-result v3

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v1

    long-to-float v1, v1

    div-float v4, v0, v1

    iget v5, v8, Lcom/google/android/music/dl/DownloadOrder;->errorType:I

    move-object v0, p3

    move-wide v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/music/dl/IDownloadProgressListener;->onDownloadProgress(JIFI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :cond_2
    :goto_0
    if-eqz v8, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 85
    .end local v7           #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    .end local v8           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 91
    .restart local v7       #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    .restart local v8       #order:Lcom/google/android/music/dl/DownloadOrder;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 92
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "BufferProgress"

    const-string v1, "Error trying to notify of progress"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 95
    .end local v6           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method addVerboseProgressListener(Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyBufferProgress(Lcom/google/android/music/dl/DownloadOrder;)V
    .locals 6
    .parameter "order"

    .prologue
    .line 40
    iget-wide v1, p1, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v4

    long-to-float v0, v4

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v4

    long-to-float v4, v4

    div-float v4, v0, v4

    iget v5, p1, Lcom/google/android/music/dl/DownloadOrder;->errorType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/dl/BufferProgress;->notifyBufferProgress(JIFI)V

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/BufferProgress;->notifyVerboseProgressListeners(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public removeDownloadProgressListener(JLcom/google/android/music/dl/IDownloadProgressListener;)V
    .locals 4
    .parameter "songid"
    .parameter "listener"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 101
    .local v0, listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    if-nez v0, :cond_0

    .line 102
    monitor-exit v1

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_1
    monitor-exit v1

    goto :goto_0

    .end local v0           #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/dl/IDownloadProgressListener;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method removeVerboseProgressListener(Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
