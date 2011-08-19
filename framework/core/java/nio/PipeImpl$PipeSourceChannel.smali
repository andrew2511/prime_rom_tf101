.class Ljava/nio/PipeImpl$PipeSourceChannel;
.super Ljava/nio/channels/Pipe$SourceChannel;
.source "PipeImpl.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/FileDescriptorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/PipeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipeSourceChannel"
.end annotation


# instance fields
.field private final channel:Ljava/nio/FileChannelImpl;

.field private final fd:Ljava/io/FileDescriptor;

.field final synthetic this$0:Ljava/nio/PipeImpl;


# direct methods
.method private constructor <init>(Ljava/nio/PipeImpl;I)V
    .registers 7
    .parameter
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iput-object p1, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->this$0:Ljava/nio/PipeImpl;

    .line 69
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/Pipe$SourceChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 70
    invoke-static {p2}, Llibcore/io/IoUtils;->newFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->fd:Ljava/io/FileDescriptor;

    .line 71
    new-instance v0, Ljava/nio/ReadOnlyFileChannel;

    new-instance v1, Ljava/nio/PipeImpl$FdCloser;

    iget-object v2, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/nio/PipeImpl$FdCloser;-><init>(Ljava/io/FileDescriptor;Ljava/nio/PipeImpl$1;)V

    invoke-direct {v0, v1, p2}, Ljava/nio/ReadOnlyFileChannel;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->channel:Ljava/nio/FileChannelImpl;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/PipeImpl;ILjava/nio/PipeImpl$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/nio/PipeImpl$PipeSourceChannel;-><init>(Ljava/nio/PipeImpl;I)V

    return-void
.end method


# virtual methods
.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->channel:Ljava/nio/FileChannelImpl;

    invoke-virtual {v0}, Ljava/nio/FileChannelImpl;->close()V

    .line 76
    return-void
.end method

.method protected implConfigureBlocking(Z)V
    .registers 3
    .parameter "blocking"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/nio/PipeImpl$PipeSourceChannel;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 80
    return-void
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
    .line 83
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->channel:Ljava/nio/FileChannelImpl;

    invoke-virtual {v0, p1}, Ljava/nio/FileChannelImpl;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;)J
    .registers 4
    .parameter "buffers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->channel:Ljava/nio/FileChannelImpl;

    invoke-virtual {v0, p1}, Ljava/nio/FileChannelImpl;->read([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 6
    .parameter "buffers"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->channel:Ljava/nio/FileChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/FileChannelImpl;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method
