.class Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;
.super Ljava/io/InputStream;
.source "OpenSSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 768
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->startHandshake(Z)V

    .line 769
    return-void
.end method


# virtual methods
.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 781
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$000(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 782
    :try_start_e
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #calls: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$100(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    .line 783
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$200(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$300(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_read_byte(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 785
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public read([BII)I
    .registers 12
    .parameter "buf"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 795
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$000(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 796
    :try_start_e
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #calls: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$100(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    .line 797
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 798
    if-nez p3, :cond_1c

    .line 799
    const/4 v0, 0x0

    monitor-exit v7

    .line 801
    :goto_1b
    return v0

    :cond_1c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$200(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$300(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v6

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_read(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;[BIII)I

    move-result v0

    monitor-exit v7

    goto :goto_1b

    .line 803
    :catchall_39
    move-exception v0

    monitor-exit v7
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_39

    throw v0
.end method
