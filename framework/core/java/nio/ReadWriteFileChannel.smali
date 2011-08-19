.class final Ljava/nio/ReadWriteFileChannel;
.super Ljava/nio/FileChannelImpl;
.source "ReadWriteFileChannel.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .parameter "stream"
    .parameter "handle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/nio/FileChannelImpl;-><init>(Ljava/lang/Object;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public final map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
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

    .line 28
    invoke-virtual {p0}, Ljava/nio/ReadWriteFileChannel;->openCheck()V

    .line 29
    if-nez p1, :cond_d

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32
    :cond_d
    cmp-long v0, p2, v1

    if-ltz v0, :cond_1c

    cmp-long v0, p4, v1

    if-ltz v0, :cond_1c

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p4, v0

    if-lez v0, :cond_22

    .line 33
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 35
    :cond_22
    invoke-virtual/range {p0 .. p5}, Ljava/nio/ReadWriteFileChannel;->mapImpl(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0
.end method
