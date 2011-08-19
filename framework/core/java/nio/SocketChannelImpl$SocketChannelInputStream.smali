.class Ljava/nio/SocketChannelImpl$SocketChannelInputStream;
.super Ljava/io/InputStream;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/SocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketChannelInputStream"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .registers 2
    .parameter "channel"

    .prologue
    .line 700
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 701
    iput-object p1, p0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;->channel:Ljava/nio/channels/SocketChannel;

    .line 702
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
    .line 709
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 710
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    iget-object v2, p0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_e

    .line 715
    new-instance v2, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v2}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v2

    .line 717
    :cond_e
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 718
    .local v0, buf:Ljava/nio/ByteBuffer;
    iget-object v2, p0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 720
    .local v1, result:I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_1e

    move v2, v1

    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    goto :goto_1d
.end method

.method public read([BII)I
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 727
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_12

    .line 728
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 730
    :cond_12
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 731
    .local v0, buf:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1
.end method
