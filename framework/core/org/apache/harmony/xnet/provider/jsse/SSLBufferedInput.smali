.class public Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;
.super Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;
.source "SSLBufferedInput.java"


# instance fields
.field private bytik:I

.field private consumed:I

.field private in:Ljava/nio/ByteBuffer;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->consumed:I

    .line 40
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->in:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method protected consumed()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->consumed:I

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->in:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->bytik:I

    .line 72
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->consumed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->consumed:I

    .line 73
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->bytik:I

    return v0
.end method

.method protected setSourceBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->consumed:I

    .line 47
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->in:Ljava/nio/ByteBuffer;

    .line 48
    return-void
.end method
