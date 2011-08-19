.class Ljava/nio/channels/Channels$OutputStreamChannel;
.super Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.source "Channels.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutputStreamChannel"
.end annotation


# instance fields
.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "outputStream"

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    .line 337
    if-nez p1, :cond_b

    .line 338
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 340
    :cond_b
    iput-object p1, p0, Ljava/nio/channels/Channels$OutputStreamChannel;->outputStream:Ljava/io/OutputStream;

    .line 341
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
    .line 364
    iget-object v0, p0, Ljava/nio/channels/Channels$OutputStreamChannel;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 365
    return-void
.end method

.method public declared-synchronized write(Ljava/nio/ByteBuffer;)I
    .registers 8
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 344
    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/Channels$OutputStreamChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_12

    .line 345
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 344
    :catchall_f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 347
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_f

    move-result v1

    .line 348
    .local v1, bytesRemain:I
    if-nez v1, :cond_1b

    move v2, v4

    .line 359
    :goto_19
    monitor-exit p0

    return v2

    .line 351
    :cond_1b
    :try_start_1b
    new-array v0, v1, [B

    .line 352
    .local v0, buf:[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_f

    .line 354
    :try_start_20
    invoke-virtual {p0}, Ljava/nio/channels/Channels$OutputStreamChannel;->begin()V

    .line 355
    iget-object v2, p0, Ljava/nio/channels/Channels$OutputStreamChannel;->outputStream:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_33

    .line 357
    if-ltz v1, :cond_31

    move v2, v5

    :goto_2c
    :try_start_2c
    invoke-virtual {p0, v2}, Ljava/nio/channels/Channels$OutputStreamChannel;->end(Z)V

    move v2, v1

    .line 359
    goto :goto_19

    :cond_31
    move v2, v4

    .line 357
    goto :goto_2c

    :catchall_33
    move-exception v2

    if-ltz v1, :cond_3b

    move v3, v5

    :goto_37
    invoke-virtual {p0, v3}, Ljava/nio/channels/Channels$OutputStreamChannel;->end(Z)V

    throw v2
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_f

    :cond_3b
    move v3, v4

    goto :goto_37
.end method
