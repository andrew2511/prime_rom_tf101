.class Ljava/nio/channels/Channels$ChannelInputStream;
.super Ljava/io/InputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChannelInputStream"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 3
    .parameter "channel"

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 208
    if-nez p1, :cond_b

    .line 209
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 211
    :cond_b
    iput-object p1, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    .line 212
    return-void
.end method


# virtual methods
.method public available()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v3, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    instance-of v3, v3, Ljava/nio/channels/FileChannel;

    if-eqz v3, :cond_21

    .line 234
    iget-object v0, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    check-cast v0, Ljava/nio/channels/FileChannel;

    .line 235
    .local v0, fileChannel:Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    sub-long v1, v3, v5

    .line 236
    .local v1, result:J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_1f

    const v3, 0x7fffffff

    .line 238
    .end local v0           #fileChannel:Ljava/nio/channels/FileChannel;
    .end local v1           #result:J
    :goto_1e
    return v3

    .line 236
    .restart local v0       #fileChannel:Ljava/nio/channels/FileChannel;
    .restart local v1       #result:J
    :cond_1f
    long-to-int v3, v1

    goto :goto_1e

    .line 238
    .end local v0           #fileChannel:Ljava/nio/channels/FileChannel;
    .end local v1           #result:J
    :cond_21
    invoke-super {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    goto :goto_1e
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 245
    monitor-exit p0

    return-void

    .line 244
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 216
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_3
    new-array v1, v2, [B

    .line 217
    .local v1, oneByte:[B
    invoke-virtual {p0, v1}, Ljava/nio/channels/Channels$ChannelInputStream;->read([B)I

    move-result v0

    .line 218
    .local v0, n:I
    if-ne v0, v3, :cond_12

    .line 220
    const/4 v2, 0x0

    aget-byte v2, v1, v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_14

    and-int/lit16 v2, v2, 0xff

    .line 222
    :goto_10
    monitor-exit p0

    return v2

    :cond_12
    const/4 v2, -0x1

    goto :goto_10

    .line 216
    .end local v0           #n:I
    .end local v1           #oneByte:[B
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized read([BII)I
    .registers 6
    .parameter "target"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    monitor-enter p0

    :try_start_1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 228
    .local v0, buffer:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-static {v1}, Ljava/nio/channels/Channels;->checkBlocking(Ljava/nio/channels/Channel;)V

    .line 229
    iget-object v1, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v1

    monitor-exit p0

    return v1

    .line 227
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method
