.class Lcom/google/masf/services/CookieService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/masf/protocol/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/masf/services/CookieService;->requestNewCookie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/masf/services/CookieService;


# direct methods
.method constructor <init>(Lcom/google/masf/services/CookieService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/google/masf/protocol/Request;Lcom/google/masf/protocol/Response;)V
    .locals 6

    invoke-static {}, Lcom/google/masf/services/CookieService;->getInstance()Lcom/google/masf/services/CookieService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2}, Lcom/google/masf/protocol/Response;->getStatusCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/masf/protocol/Response;->getStreamLength()I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/google/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/masf/services/CookieService;->access$002(Lcom/google/masf/services/CookieService;J)J

    iget-object v1, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/masf/services/CookieService;->access$102(Lcom/google/masf/services/CookieService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/masf/services/CookieService;->access$202(Lcom/google/masf/services/CookieService;Z)Z

    iget-object v1, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    invoke-static {v1}, Lcom/google/masf/services/CookieService;->access$300(Lcom/google/masf/services/CookieService;)V

    iget-object v1, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    invoke-static {v3}, Lcom/google/masf/services/CookieService;->access$000(Lcom/google/masf/services/CookieService;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/google/masf/services/CookieService;->notifyObservers(Ljava/lang/Object;)V

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/masf/services/CookieService;->access$002(Lcom/google/masf/services/CookieService;J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    iget-object v1, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/masf/services/CookieService;->access$002(Lcom/google/masf/services/CookieService;J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/masf/services/CookieService;->access$202(Lcom/google/masf/services/CookieService;Z)Z

    iget-object v1, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    invoke-static {v1}, Lcom/google/masf/services/CookieService;->access$300(Lcom/google/masf/services/CookieService;)V

    iget-object v1, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    invoke-static {v3}, Lcom/google/masf/services/CookieService;->access$000(Lcom/google/masf/services/CookieService;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/google/masf/services/CookieService;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_5
    iget-object v2, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/masf/services/CookieService;->access$202(Lcom/google/masf/services/CookieService;Z)Z

    iget-object v2, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    invoke-static {v2}, Lcom/google/masf/services/CookieService;->access$300(Lcom/google/masf/services/CookieService;)V

    iget-object v2, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    new-instance v3, Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    invoke-static {v4}, Lcom/google/masf/services/CookieService;->access$000(Lcom/google/masf/services/CookieService;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/google/masf/services/CookieService;->notifyObservers(Ljava/lang/Object;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public requestFailed(Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V
    .locals 3

    invoke-static {}, Lcom/google/masf/services/CookieService;->getInstance()Lcom/google/masf/services/CookieService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/masf/services/CookieService$1;->this$0:Lcom/google/masf/services/CookieService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/masf/services/CookieService;->access$202(Lcom/google/masf/services/CookieService;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
