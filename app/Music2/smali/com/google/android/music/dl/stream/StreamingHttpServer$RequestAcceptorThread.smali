.class Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;
.super Ljava/lang/Thread;
.source "StreamingHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/stream/StreamingHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestAcceptorThread"
.end annotation


# instance fields
.field private mAllowedToStream:J

.field final synthetic this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;


# direct methods
.method private constructor <init>(Lcom/google/android/music/dl/stream/StreamingHttpServer;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->mAllowedToStream:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/dl/stream/StreamingHttpServer;Lcom/google/android/music/dl/stream/StreamingHttpServer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;-><init>(Lcom/google/android/music/dl/stream/StreamingHttpServer;)V

    return-void
.end method


# virtual methods
.method public notifyNewAllowedStream(J)V
    .locals 5
    .parameter "xId"

    .prologue
    .line 150
    iget-object v2, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-static {v2}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$200(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 151
    :try_start_0
    iput-wide p1, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->mAllowedToStream:J

    .line 152
    iget-object v3, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-static {v3}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$200(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 153
    .local v1, workers:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;

    .line 155
    .local v0, worker:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    invoke-virtual {v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->getRequestedDownload()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->getRequestedDownload()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    cmp-long v3, v3, p1

    if-eqz v3, :cond_0

    .line 157
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->shutdown()V

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 161
    .end local v0           #worker:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    .end local v1           #workers:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #workers:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;>;"
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 119
    const/4 v3, 0x0

    .line 121
    .local v3, socket:Ljava/net/Socket;
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-static {v6}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 122
    iget-object v6, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    iget-object v6, v6, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .line 127
    iget-object v6, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-static {v6}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$200(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :try_start_1
    new-instance v4, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;

    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    iget-wide v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->mAllowedToStream:J

    invoke-direct {v4, v7, v3, v8, v9}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;-><init>(Lcom/google/android/music/dl/stream/StreamingHttpServer;Ljava/net/Socket;J)V

    .line 129
    .local v4, worker:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-static {v7}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$200(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v4}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->start()V

    .line 132
    sget-boolean v7, Lcom/google/android/music/dl/stream/StreamingHttpServer;->LOCAL_LOGV:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-static {v7}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$200(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v2, log:Ljava/lang/StringBuilder;
    const-string v7, "More than 1 worker running: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-static {v7}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$200(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;

    .line 136
    .local v5, wt:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    invoke-virtual {v5}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->getRequestedDownload()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 140
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #log:Ljava/lang/StringBuilder;
    .end local v4           #worker:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    .end local v5           #wt:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 142
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 143
    .local v0, e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-static {v6}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 144
    const-string v6, "Streamer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RequestAcceptorThread exited abnormally: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    return-void

    .line 138
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #log:Ljava/lang/StringBuilder;
    .restart local v4       #worker:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    :cond_1
    :try_start_3
    const-string v7, "Streamer"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #log:Ljava/lang/StringBuilder;
    :cond_2
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
