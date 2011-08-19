.class public final Ljavax/obex/PrivateOutputStream;
.super Ljava/io/OutputStream;
.source "PrivateOutputStream.java"


# instance fields
.field private mArray:Ljava/io/ByteArrayOutputStream;

.field private mMaxPacketSize:I

.field private mOpen:Z

.field private mParent:Ljavax/obex/BaseStream;


# direct methods
.method public constructor <init>(Ljavax/obex/BaseStream;I)V
    .registers 4
    .parameter "p"
    .parameter "maxSize"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 59
    iput-object p1, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    .line 61
    iput p2, p0, Ljavax/obex/PrivateOutputStream;->mMaxPacketSize:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/PrivateOutputStream;->mOpen:Z

    .line 63
    return-void
.end method

.method private ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    invoke-interface {v0}, Ljavax/obex/BaseStream;->ensureOpen()V

    .line 151
    iget-boolean v0, p0, Ljavax/obex/PrivateOutputStream;->mOpen:Z

    if-nez v0, :cond_11

    .line 152
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_11
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 163
    iput-boolean v1, p0, Ljavax/obex/PrivateOutputStream;->mOpen:Z

    .line 164
    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    invoke-interface {v0, v1}, Ljavax/obex/BaseStream;->streamClosed(Z)V

    .line 165
    return-void
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 173
    iget-boolean v0, p0, Ljavax/obex/PrivateOutputStream;->mOpen:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public declared-synchronized readBytes(I)[B
    .registers 6
    .parameter "size"

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_28

    .line 132
    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 133
    .local v1, temp:[B
    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 134
    new-array v0, p1, [B

    .line 135
    .local v0, result:[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    array-length v2, v1

    if-eq v2, p1, :cond_25

    .line 137
    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    array-length v3, v1

    sub-int/2addr v3, p1

    invoke-virtual {v2, v1, p1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2a

    :cond_25
    move-object v2, v0

    .line 141
    .end local v0           #result:[B
    .end local v1           #temp:[B
    :goto_26
    monitor-exit p0

    return-object v2

    :cond_28
    const/4 v2, 0x0

    goto :goto_26

    .line 131
    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public size()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized write(I)V
    .registers 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljavax/obex/PrivateOutputStream;->ensureOpen()V

    .line 84
    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    invoke-interface {v0}, Ljavax/obex/BaseStream;->ensureNotDone()V

    .line 85
    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 86
    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Ljavax/obex/PrivateOutputStream;->mMaxPacketSize:I

    if-ne v0, v1, :cond_1f

    .line 87
    iget-object v0, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/obex/BaseStream;->continueOperation(ZZ)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 89
    :cond_1f
    monitor-exit p0

    return-void

    .line 83
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([B)V
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/obex/PrivateOutputStream;->write([BII)V

    .line 94
    return-void
.end method

.method public declared-synchronized write([BII)V
    .registers 9
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    monitor-enter p0

    move v0, p2

    .line 99
    .local v0, offset1:I
    move v1, p3

    .line 101
    .local v1, remainLength:I
    if-nez p1, :cond_10

    .line 102
    :try_start_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "buffer is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 98
    :catchall_d
    move-exception v2

    monitor-exit p0

    throw v2

    .line 104
    :cond_10
    or-int v2, p2, p3

    if-ltz v2, :cond_18

    :try_start_14
    array-length v2, p1

    sub-int/2addr v2, p2

    if-le p3, v2, :cond_20

    .line 105
    :cond_18
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "index outof bound"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_20
    invoke-direct {p0}, Ljavax/obex/PrivateOutputStream;->ensureOpen()V

    .line 109
    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    invoke-interface {v2}, Ljavax/obex/BaseStream;->ensureNotDone()V

    .line 110
    iget v2, p0, Ljavax/obex/PrivateOutputStream;->mMaxPacketSize:I

    if-ge p3, v2, :cond_33

    .line 111
    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_d

    .line 123
    :cond_31
    :goto_31
    monitor-exit p0

    return-void

    .line 113
    :cond_33
    :goto_33
    :try_start_33
    iget v2, p0, Ljavax/obex/PrivateOutputStream;->mMaxPacketSize:I

    if-lt v1, v2, :cond_4b

    .line 114
    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    iget v3, p0, Ljavax/obex/PrivateOutputStream;->mMaxPacketSize:I

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 115
    iget v2, p0, Ljavax/obex/PrivateOutputStream;->mMaxPacketSize:I

    add-int/2addr v0, v2

    .line 116
    sub-int v1, p3, v0

    .line 117
    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mParent:Ljavax/obex/BaseStream;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljavax/obex/BaseStream;->continueOperation(ZZ)Z

    goto :goto_33

    .line 119
    :cond_4b
    if-lez v1, :cond_31

    .line 120
    iget-object v2, p0, Ljavax/obex/PrivateOutputStream;->mArray:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_52
    .catchall {:try_start_33 .. :try_end_52} :catchall_d

    goto :goto_31
.end method
