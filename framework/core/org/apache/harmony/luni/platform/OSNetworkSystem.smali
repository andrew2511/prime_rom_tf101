.class final Lorg/apache/harmony/luni/platform/OSNetworkSystem;
.super Ljava/lang/Object;
.source "OSNetworkSystem.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/INetworkSystem;


# static fields
.field private static final singleton:Lorg/apache/harmony/luni/platform/OSNetworkSystem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;

    invoke-direct {v0}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->singleton:Lorg/apache/harmony/luni/platform/OSNetworkSystem;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getOSNetworkSystem()Lorg/apache/harmony/luni/platform/OSNetworkSystem;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->singleton:Lorg/apache/harmony/luni/platform/OSNetworkSystem;

    return-object v0
.end method

.method static native selectImpl([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;II[IJ)Z
.end method


# virtual methods
.method public native accept(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native close(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native connectNonBlocking(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native disconnectDatagram(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
.end method

.method public native getSocketLocalPort(Ljava/io/FileDescriptor;)I
.end method

.method public native getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native isConnected(Ljava/io/FileDescriptor;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native listen(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native read(Ljava/io/FileDescriptor;[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native readDirect(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native recv(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native recvDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public select([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;IIJ[I)Z
    .registers 16
    .parameter "readFDs"
    .parameter "writeFDs"
    .parameter "numReadable"
    .parameter "numWritable"
    .parameter "timeout"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 81
    if-ltz p3, :cond_4

    if-gez p4, :cond_a

    .line 82
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 85
    :cond_a
    add-int v7, p3, p4

    .line 86
    .local v7, total:I
    if-nez v7, :cond_10

    .line 87
    const/4 v0, 0x1

    .line 90
    :goto_f
    return v0

    :cond_10
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p7

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->selectImpl([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;II[IJ)Z

    move-result v0

    goto :goto_f
.end method

.method public native send(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native sendDirect(Ljava/io/FileDescriptor;IIIILjava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native sendUrgentData(Ljava/io/FileDescriptor;B)V
.end method

.method public native setInetAddress(Ljava/net/InetAddress;[B)V
.end method

.method public native setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native shutdownInput(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native shutdownOutput(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native socket(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public native write(Ljava/io/FileDescriptor;[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native writeDirect(Ljava/io/FileDescriptor;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
