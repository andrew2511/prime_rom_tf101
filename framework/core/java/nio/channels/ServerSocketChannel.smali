.class public abstract Ljava/nio/channels/ServerSocketChannel;
.super Ljava/nio/channels/spi/AbstractSelectableChannel;
.source "ServerSocketChannel.java"


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 2
    .parameter "selectorProvider"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 47
    return-void
.end method

.method public static open()Ljava/nio/channels/ServerSocketChannel;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract accept()Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract socket()Ljava/net/ServerSocket;
.end method

.method public final validOps()I
    .registers 2

    .prologue
    .line 73
    const/16 v0, 0x10

    return v0
.end method
