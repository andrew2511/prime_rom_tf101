.class Lorg/apache/harmony/luni/net/SocketOutputStream;
.super Ljava/io/OutputStream;
.source "SocketOutputStream.java"


# instance fields
.field private socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;


# direct methods
.method public constructor <init>(Ljava/net/SocketImpl;)V
    .registers 2
    .parameter "socket"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 39
    check-cast p1, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .end local p1
    iput-object p1, p0, Lorg/apache/harmony/luni/net/SocketOutputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketOutputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->close()V

    .line 45
    return-void
.end method

.method public write(I)V
    .registers 6
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-array v0, v3, [B

    .line 61
    .local v0, buffer:[B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 62
    iget-object v1, p0, Lorg/apache/harmony/luni/net/SocketOutputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->write([BII)I

    .line 63
    return-void
.end method

.method public write([B)V
    .registers 5
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketOutputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->write([BII)I

    .line 50
    return-void
.end method

.method public write([BII)V
    .registers 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 55
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketOutputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->write([BII)I

    .line 56
    return-void
.end method
