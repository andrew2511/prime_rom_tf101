.class Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
.super Ljava/lang/Thread;
.source "StreamingHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/stream/StreamingHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerThread"
.end annotation


# instance fields
.field private final mAllowedToStreamFile:J

.field private mHandler:Lcom/google/android/music/dl/stream/StreamRequestHandler;

.field private final mSocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;


# direct methods
.method public constructor <init>(Lcom/google/android/music/dl/stream/StreamingHttpServer;Ljava/net/Socket;J)V
    .locals 1
    .parameter
    .parameter "socket"
    .parameter "allowedToStreamFile"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    .line 172
    const-string v0, "StreamingHttpServer.WorkerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->setDaemon(Z)V

    .line 174
    iput-object p2, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    .line 175
    iput-wide p3, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mAllowedToStreamFile:J

    .line 176
    return-void
.end method


# virtual methods
.method public getRequestedDownload()Lcom/google/android/music/dl/DownloadOrder;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mHandler:Lcom/google/android/music/dl/stream/StreamRequestHandler;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mHandler:Lcom/google/android/music/dl/stream/StreamRequestHandler;

    invoke-virtual {v0}, Lcom/google/android/music/dl/stream/StreamRequestHandler;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    new-instance v7, Lcom/google/android/music/dl/stream/StreamRequestHandler;

    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-static {v8}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$300(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Lcom/google/android/music/dl/DownloadManager;

    move-result-object v8

    iget-wide v9, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mAllowedToStreamFile:J

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/music/dl/stream/StreamRequestHandler;-><init>(Lcom/google/android/music/dl/DownloadManager;J)V

    iput-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mHandler:Lcom/google/android/music/dl/stream/StreamRequestHandler;

    .line 183
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-direct {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    .end local v0           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .local v1, conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    :try_start_1
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    iget-object v8, v8, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v1, v7, v8}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 187
    new-instance v4, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 188
    .local v4, processor:Lorg/apache/http/protocol/BasicHttpProcessor;
    new-instance v7, Lorg/apache/http/protocol/ResponseContent;

    invoke-direct {v7}, Lorg/apache/http/protocol/ResponseContent;-><init>()V

    invoke-virtual {v4, v7}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 189
    new-instance v7, Lorg/apache/http/protocol/ResponseConnControl;

    invoke-direct {v7}, Lorg/apache/http/protocol/ResponseConnControl;-><init>()V

    invoke-virtual {v4, v7}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 191
    new-instance v5, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-direct {v5}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;-><init>()V

    .line 193
    .local v5, registry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    const-string v7, "*"

    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mHandler:Lcom/google/android/music/dl/stream/StreamRequestHandler;

    invoke-virtual {v5, v7, v8}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 195
    new-instance v6, Lorg/apache/http/protocol/HttpService;

    new-instance v7, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v7}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    new-instance v8, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v8}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    invoke-direct {v6, v4, v7, v8}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    .line 198
    .local v6, service:Lorg/apache/http/protocol/HttpService;
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    iget-object v7, v7, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v6, v7}, Lorg/apache/http/protocol/HttpService;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 199
    invoke-virtual {v6, v5}, Lorg/apache/http/protocol/HttpService;->setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V

    .line 201
    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    .line 203
    .local v3, httpContext:Lorg/apache/http/protocol/HttpContext;
    invoke-virtual {v6, v1, v3}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 219
    if-eqz v1, :cond_1

    .line 220
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-static {v7}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$200(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v7

    monitor-enter v7

    .line 228
    :try_start_3
    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-static {v8}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$200(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 229
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 231
    .end local v1           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .end local v3           #httpContext:Lorg/apache/http/protocol/HttpContext;
    .end local v4           #processor:Lorg/apache/http/protocol/BasicHttpProcessor;
    .end local v5           #registry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    .end local v6           #service:Lorg/apache/http/protocol/HttpService;
    .restart local v0       #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    :goto_1
    return-void

    .line 221
    .end local v0           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .restart local v1       #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .restart local v3       #httpContext:Lorg/apache/http/protocol/HttpContext;
    .restart local v4       #processor:Lorg/apache/http/protocol/BasicHttpProcessor;
    .restart local v5       #registry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    .restart local v6       #service:Lorg/apache/http/protocol/HttpService;
    :cond_1
    :try_start_4
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    if-eqz v7, :cond_0

    .line 222
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v7

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v8

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 204
    .end local v1           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .end local v3           #httpContext:Lorg/apache/http/protocol/HttpContext;
    .end local v4           #processor:Lorg/apache/http/protocol/BasicHttpProcessor;
    .end local v5           #registry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    .end local v6           #service:Lorg/apache/http/protocol/HttpService;
    .restart local v0       #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 209
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_6
    instance-of v7, v2, Lorg/apache/http/ConnectionClosedException;

    if-nez v7, :cond_2

    instance-of v7, v2, Ljava/net/SocketException;

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Connection reset by peer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 212
    :cond_2
    sget-boolean v7, Lcom/google/android/music/dl/stream/StreamingHttpServer;->LOCAL_LOGV:Z

    if-eqz v7, :cond_3

    const-string v7, "Streamer"

    const-string v8, "StreamingHttpServer.Worker connection closed"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 219
    :cond_3
    :goto_3
    if-eqz v0, :cond_7

    .line 220
    :try_start_7
    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;->shutdown()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 227
    :cond_4
    :goto_4
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-static {v7}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$200(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v7

    monitor-enter v7

    .line 228
    :try_start_8
    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-static {v8}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$200(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 229
    monitor-exit v7

    goto :goto_1

    :catchall_1
    move-exception v8

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v8

    .line 214
    :cond_5
    :try_start_9
    const-string v7, "Streamer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HTTP server disrupted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    .line 218
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v7

    .line 219
    :goto_5
    if-eqz v0, :cond_8

    .line 220
    :try_start_a
    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;->shutdown()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 227
    :cond_6
    :goto_6
    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-static {v8}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$200(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v8

    monitor-enter v8

    .line 228
    :try_start_b
    iget-object v9, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-static {v9}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$200(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 229
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v7

    .line 221
    .restart local v2       #e:Ljava/lang/Exception;
    :cond_7
    :try_start_c
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    if-eqz v7, :cond_4

    .line 222
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_4

    .line 224
    :catch_2
    move-exception v7

    goto :goto_4

    .line 221
    .end local v2           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_d
    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    if-eqz v8, :cond_6

    .line 222
    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_6

    .line 224
    :catch_3
    move-exception v8

    goto :goto_6

    .line 229
    :catchall_3
    move-exception v7

    :try_start_e
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v7

    .line 218
    .end local v0           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .restart local v1       #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    :catchall_4
    move-exception v7

    move-object v0, v1

    .end local v1           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .restart local v0       #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    goto :goto_5

    .line 204
    .end local v0           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .restart local v1       #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    :catch_4
    move-exception v7

    move-object v2, v7

    move-object v0, v1

    .end local v1           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .restart local v0       #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    goto/16 :goto_2
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->interrupt()V

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0
.end method
