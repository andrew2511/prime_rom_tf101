.class Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;
.super Ljava/io/OutputStream;
.source "OpenSSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLOutputStream"
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
    .line 813
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 818
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->startHandshake(Z)V

    .line 819
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 6
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 828
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$400(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 829
    :try_start_e
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #calls: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$100(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    .line 830
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$200(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$300(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-static {v1, v2, v3, p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_write_byte(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;I)V

    .line 831
    monitor-exit v0

    .line 832
    return-void

    .line 831
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_26

    throw v1
.end method

.method public write([BII)V
    .registers 11
    .parameter "buf"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 840
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 841
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$400(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 842
    :try_start_e
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #calls: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$100(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    .line 843
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 844
    if-nez p3, :cond_1b

    .line 845
    monitor-exit v6

    .line 850
    :goto_1a
    return-void

    .line 847
    :cond_1b
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$200(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$300(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_write(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;[BII)V

    .line 849
    monitor-exit v6

    goto :goto_1a

    :catchall_31
    move-exception v0

    monitor-exit v6
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_31

    throw v0
.end method
