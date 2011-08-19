.class final Ljava/nio/WriteOnlyFileChannel;
.super Ljava/nio/FileChannelImpl;
.source "WriteOnlyFileChannel.java"


# instance fields
.field private append:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 4
    .parameter "stream"
    .parameter "handle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/nio/FileChannelImpl;-><init>(Ljava/lang/Object;I)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/WriteOnlyFileChannel;->append:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IZ)V
    .registers 5
    .parameter "stream"
    .parameter "handle"
    .parameter "isAppend"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/nio/FileChannelImpl;-><init>(Ljava/lang/Object;I)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/WriteOnlyFileChannel;->append:Z

    .line 37
    iput-boolean p3, p0, Ljava/nio/WriteOnlyFileChannel;->append:Z

    .line 38
    return-void
.end method


# virtual methods
.method protected final basicLock(JJZZ)Ljava/nio/channels/FileLock;
    .registers 8
    .parameter "position"
    .parameter "size"
    .parameter "shared"
    .parameter "wait"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    if-eqz p5, :cond_8

    .line 96
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 98
    :cond_8
    invoke-super/range {p0 .. p6}, Ljava/nio/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .registers 9
    .parameter "mode"
    .parameter "position"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 76
    invoke-virtual {p0}, Ljava/nio/WriteOnlyFileChannel;->openCheck()V

    .line 77
    if-nez p1, :cond_d

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 80
    :cond_d
    cmp-long v0, p2, v1

    if-ltz v0, :cond_1c

    cmp-long v0, p4, v1

    if-ltz v0, :cond_1c

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p4, v0

    if-lez v0, :cond_22

    .line 81
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 83
    :cond_22
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method public position()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-boolean v0, p0, Ljava/nio/WriteOnlyFileChannel;->append:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/nio/WriteOnlyFileChannel;->size()J

    move-result-wide v0

    :goto_8
    return-wide v0

    :cond_9
    invoke-super {p0}, Ljava/nio/FileChannelImpl;->position()J

    move-result-wide v0

    goto :goto_8
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/nio/WriteOnlyFileChannel;->openCheck()V

    .line 61
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .registers 6
    .parameter "buffer"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    if-nez p1, :cond_8

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 68
    :cond_8
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_14

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    :cond_14
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 5
    .parameter "buffers"
    .parameter "offset"
    .parameter "length"
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
    invoke-virtual {p0}, Ljava/nio/WriteOnlyFileChannel;->openCheck()V

    .line 56
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .registers 7
    .parameter "position"
    .parameter "count"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/nio/WriteOnlyFileChannel;->openCheck()V

    .line 47
    invoke-interface {p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 48
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 50
    :cond_f
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-boolean v0, p0, Ljava/nio/WriteOnlyFileChannel;->append:Z

    if-eqz v0, :cond_b

    .line 88
    invoke-virtual {p0}, Ljava/nio/WriteOnlyFileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/nio/WriteOnlyFileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 90
    :cond_b
    invoke-super {p0, p1}, Ljava/nio/FileChannelImpl;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
