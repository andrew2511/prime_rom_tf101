.class public Lorg/apache/harmony/luni/net/PlainServerSocketImpl;
.super Lorg/apache/harmony/luni/net/PlainSocketImpl;
.source "PlainServerSocketImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 2
    .parameter "fd"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected create(Z)V
    .registers 4
    .parameter "isStreaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0, p1}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->create(Z)V

    .line 41
    if-eqz p1, :cond_b

    .line 42
    const/4 v0, 0x4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 44
    :cond_b
    return-void
.end method
