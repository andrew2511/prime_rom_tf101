.class Lorg/apache/harmony/luni/net/SocketInputStream;
.super Ljava/io/InputStream;
.source "SocketInputStream.java"


# instance fields
.field private final socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;


# direct methods
.method public constructor <init>(Ljava/net/SocketImpl;)V
    .registers 2
    .parameter "socket"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    check-cast p1, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .end local p1
    iput-object p1, p0, Lorg/apache/harmony/luni/net/SocketInputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .line 45
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketInputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketInputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->close()V

    .line 55
    return-void
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-array v0, v4, [B

    .line 60
    .local v0, buffer:[B
    iget-object v2, p0, Lorg/apache/harmony/luni/net/SocketInputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v2, v0, v3, v4}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->read([BII)I

    move-result v1

    .line 61
    .local v1, result:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    move v2, v1

    :goto_e
    return v2

    :cond_f
    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    goto :goto_e
.end method

.method public read([B)I
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/harmony/luni/net/SocketInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
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
    .line 71
    if-nez p3, :cond_4

    .line 72
    const/4 v0, 0x0

    .line 75
    :goto_3
    return v0

    .line 74
    :cond_4
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 75
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketInputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->read([BII)I

    move-result v0

    goto :goto_3
.end method
