.class Ljava/net/InetAddress$2;
.super Ljava/lang/Thread;
.source "InetAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/InetAddress;->isReachableByMultiThread(Ljava/net/NetworkInterface;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/InetAddress;

.field final synthetic val$addr:Ljava/net/InetAddress;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Ljava/net/InetAddress$2;->this$0:Ljava/net/InetAddress;

    iput-object p2, p0, Ljava/net/InetAddress$2;->val$addr:Ljava/net/InetAddress;

    iput p3, p0, Ljava/net/InetAddress$2;->val$timeout:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 843
    const/4 v0, 0x0

    .line 845
    .local v0, threadReached:Z
    :try_start_1
    iget-object v1, p0, Ljava/net/InetAddress$2;->this$0:Ljava/net/InetAddress;

    iget-object v2, p0, Ljava/net/InetAddress$2;->val$addr:Ljava/net/InetAddress;

    iget-object v3, p0, Ljava/net/InetAddress$2;->this$0:Ljava/net/InetAddress;

    iget v4, p0, Ljava/net/InetAddress$2;->val$timeout:I

    #calls: Ljava/net/InetAddress;->isReachableByTCP(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    invoke-static {v1, v2, v3, v4}, Ljava/net/InetAddress;->access$100(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_41

    move-result v0

    .line 849
    :goto_d
    iget-object v1, p0, Ljava/net/InetAddress$2;->this$0:Ljava/net/InetAddress;

    #getter for: Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;
    invoke-static {v1}, Ljava/net/InetAddress;->access$200(Ljava/net/InetAddress;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 850
    if-eqz v0, :cond_27

    .line 853
    :try_start_16
    iget-object v2, p0, Ljava/net/InetAddress$2;->this$0:Ljava/net/InetAddress;

    const/4 v3, 0x1

    #setter for: Ljava/net/InetAddress;->reached:Z
    invoke-static {v2, v3}, Ljava/net/InetAddress;->access$302(Ljava/net/InetAddress;Z)Z

    .line 854
    iget-object v2, p0, Ljava/net/InetAddress$2;->this$0:Ljava/net/InetAddress;

    #getter for: Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;
    invoke-static {v2}, Ljava/net/InetAddress;->access$200(Ljava/net/InetAddress;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 863
    :cond_25
    :goto_25
    monitor-exit v1

    .line 864
    return-void

    .line 856
    :cond_27
    iget-object v2, p0, Ljava/net/InetAddress$2;->this$0:Ljava/net/InetAddress;

    invoke-static {v2}, Ljava/net/InetAddress;->access$410(Ljava/net/InetAddress;)I

    .line 857
    iget-object v2, p0, Ljava/net/InetAddress$2;->this$0:Ljava/net/InetAddress;

    #getter for: Ljava/net/InetAddress;->addrCount:I
    invoke-static {v2}, Ljava/net/InetAddress;->access$400(Ljava/net/InetAddress;)I

    move-result v2

    if-nez v2, :cond_25

    .line 860
    iget-object v2, p0, Ljava/net/InetAddress$2;->this$0:Ljava/net/InetAddress;

    #getter for: Ljava/net/InetAddress;->waitReachable:Ljava/lang/Object;
    invoke-static {v2}, Ljava/net/InetAddress;->access$200(Ljava/net/InetAddress;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_25

    .line 863
    :catchall_3e
    move-exception v2

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_16 .. :try_end_40} :catchall_3e

    throw v2

    .line 846
    :catch_41
    move-exception v1

    goto :goto_d
.end method
