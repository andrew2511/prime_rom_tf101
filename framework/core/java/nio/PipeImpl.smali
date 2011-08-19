.class final Ljava/nio/PipeImpl;
.super Ljava/nio/channels/Pipe;
.source "PipeImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/PipeImpl$1;,
        Ljava/nio/PipeImpl$PipeSinkChannel;,
        Ljava/nio/PipeImpl$PipeSourceChannel;,
        Ljava/nio/PipeImpl$FdCloser;
    }
.end annotation


# instance fields
.field private final sink:Ljava/nio/PipeImpl$PipeSinkChannel;

.field private final source:Ljava/nio/PipeImpl$PipeSourceChannel;


# direct methods
.method public constructor <init>()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Ljava/nio/channels/Pipe;-><init>()V

    .line 35
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 36
    .local v0, fds:[I
    invoke-static {v0}, Llibcore/io/IoUtils;->pipe([I)V

    .line 39
    new-instance v1, Ljava/nio/PipeImpl$PipeSinkChannel;

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-direct {v1, p0, v2, v3}, Ljava/nio/PipeImpl$PipeSinkChannel;-><init>(Ljava/nio/PipeImpl;ILjava/nio/PipeImpl$1;)V

    iput-object v1, p0, Ljava/nio/PipeImpl;->sink:Ljava/nio/PipeImpl$PipeSinkChannel;

    .line 40
    new-instance v1, Ljava/nio/PipeImpl$PipeSourceChannel;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-direct {v1, p0, v2, v3}, Ljava/nio/PipeImpl$PipeSourceChannel;-><init>(Ljava/nio/PipeImpl;ILjava/nio/PipeImpl$1;)V

    iput-object v1, p0, Ljava/nio/PipeImpl;->source:Ljava/nio/PipeImpl$PipeSourceChannel;

    .line 41
    return-void
.end method


# virtual methods
.method public sink()Ljava/nio/channels/Pipe$SinkChannel;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Ljava/nio/PipeImpl;->sink:Ljava/nio/PipeImpl$PipeSinkChannel;

    return-object v0
.end method

.method public source()Ljava/nio/channels/Pipe$SourceChannel;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Ljava/nio/PipeImpl;->source:Ljava/nio/PipeImpl$PipeSourceChannel;

    return-object v0
.end method
