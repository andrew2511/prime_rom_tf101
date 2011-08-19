.class public final Ljava/nio/NioUtils;
.super Ljava/lang/Object;
.source "NioUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .registers 2
    .parameter "buffer"

    .prologue
    .line 49
    if-nez p0, :cond_3

    .line 59
    .end local p0
    :goto_2
    return-void

    .line 52
    .restart local p0
    :cond_3
    instance-of v0, p0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_d

    .line 53
    check-cast p0, Ljava/nio/DirectByteBuffer;

    .end local p0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->free()V

    goto :goto_2

    .line 54
    .restart local p0
    :cond_d
    instance-of v0, p0, Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_17

    .line 55
    check-cast p0, Ljava/nio/MappedByteBufferAdapter;

    .end local p0
    invoke-virtual {p0}, Ljava/nio/MappedByteBufferAdapter;->free()V

    goto :goto_2

    .line 57
    .restart local p0
    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getDirectBufferAddress(Ljava/nio/Buffer;)I
    .registers 2
    .parameter "buffer"

    .prologue
    .line 45
    iget v0, p0, Ljava/nio/Buffer;->effectiveDirectAddress:I

    return v0
.end method

.method public static getFd(Ljava/nio/channels/FileChannel;)I
    .registers 2
    .parameter "fc"

    .prologue
    .line 65
    check-cast p0, Ljava/nio/FileChannelImpl;

    .end local p0
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->getHandle()I

    move-result v0

    return v0
.end method

.method public static newFileChannel(Ljava/lang/Object;II)Ljava/nio/channels/FileChannel;
    .registers 6
    .parameter "stream"
    .parameter "fd"
    .parameter "mode"

    .prologue
    .line 72
    sparse-switch p2, :sswitch_data_3c

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :sswitch_1c
    new-instance v0, Ljava/nio/ReadOnlyFileChannel;

    invoke-direct {v0, p0, p1}, Ljava/nio/ReadOnlyFileChannel;-><init>(Ljava/lang/Object;I)V

    .line 82
    :goto_21
    return-object v0

    .line 76
    :sswitch_22
    new-instance v0, Ljava/nio/WriteOnlyFileChannel;

    invoke-direct {v0, p0, p1}, Ljava/nio/WriteOnlyFileChannel;-><init>(Ljava/lang/Object;I)V

    goto :goto_21

    .line 78
    :sswitch_28
    new-instance v0, Ljava/nio/ReadWriteFileChannel;

    invoke-direct {v0, p0, p1}, Ljava/nio/ReadWriteFileChannel;-><init>(Ljava/lang/Object;I)V

    goto :goto_21

    .line 80
    :sswitch_2e
    new-instance v0, Ljava/nio/ReadWriteFileChannel;

    invoke-direct {v0, p0, p1}, Ljava/nio/ReadWriteFileChannel;-><init>(Ljava/lang/Object;I)V

    goto :goto_21

    .line 82
    :sswitch_34
    new-instance v0, Ljava/nio/WriteOnlyFileChannel;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ljava/nio/WriteOnlyFileChannel;-><init>(Ljava/lang/Object;IZ)V

    goto :goto_21

    .line 72
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_1c
        0x1 -> :sswitch_22
        0x10 -> :sswitch_28
        0x20 -> :sswitch_2e
        0x100 -> :sswitch_34
    .end sparse-switch
.end method
