.class Ljava/nio/channels/Channels$InputStreamChannel;
.super Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.source "Channels.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStreamChannel"
.end annotation


# instance fields
.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "inputStream"

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    .line 298
    if-nez p1, :cond_b

    .line 299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 301
    :cond_b
    iput-object p1, p0, Ljava/nio/channels/Channels$InputStreamChannel;->inputStream:Ljava/io/InputStream;

    .line 302
    return-void
.end method


# virtual methods
.method protected implCloseChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Ljava/nio/channels/Channels$InputStreamChannel;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 326
    return-void
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .registers 8
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 305
    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/Channels$InputStreamChannel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_12

    .line 306
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v3
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 305
    :catchall_f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 308
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 309
    .local v1, bytesRemain:I
    new-array v0, v1, [B
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    .line 310
    .local v0, bytes:[B
    const/4 v2, 0x0

    .line 312
    .local v2, readCount:I
    :try_start_19
    invoke-virtual {p0}, Ljava/nio/channels/Channels$InputStreamChannel;->begin()V

    .line 313
    iget-object v3, p0, Ljava/nio/channels/Channels$InputStreamChannel;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_32

    move-result v2

    .line 315
    if-ltz v2, :cond_30

    move v3, v5

    :goto_25
    :try_start_25
    invoke-virtual {p0, v3}, Ljava/nio/channels/Channels$InputStreamChannel;->end(Z)V

    .line 317
    if-lez v2, :cond_2e

    .line 318
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_f

    .line 320
    :cond_2e
    monitor-exit p0

    return v2

    :cond_30
    move v3, v4

    .line 315
    goto :goto_25

    :catchall_32
    move-exception v3

    if-ltz v2, :cond_36

    move v4, v5

    :cond_36
    :try_start_36
    invoke-virtual {p0, v4}, Ljava/nio/channels/Channels$InputStreamChannel;->end(Z)V

    throw v3
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_f
.end method
