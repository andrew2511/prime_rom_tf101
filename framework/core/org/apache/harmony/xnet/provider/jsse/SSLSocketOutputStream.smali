.class public Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;
.super Ljava/io/OutputStream;
.source "SSLSocketOutputStream.java"


# instance fields
.field private final owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

.field private final singleByte:[B


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;)V
    .registers 3
    .parameter "owner"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;->singleByte:[B

    .line 34
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;->owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    .line 35
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
    const/4 v3, 0x0

    .line 41
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;->singleByte:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 42
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;->owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;->singleByte:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->writeAppData([BII)V

    .line 43
    return-void
.end method

.method public write([B)V
    .registers 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;->owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->writeAppData([BII)V

    .line 48
    return-void
.end method

.method public write([BII)V
    .registers 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;->owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->writeAppData([BII)V

    .line 53
    return-void
.end method
