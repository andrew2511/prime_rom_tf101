.class public Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;
.super Ljava/lang/Object;
.source "SSLEngineAppData.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/Appendable;


# instance fields
.field buffer:[B


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public append([B)V
    .registers 6
    .parameter "src"

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->buffer:[B

    if-eqz v0, :cond_13

    .line 45
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v1, 0x50

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Attempt to override the data"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0

    .line 49
    :cond_13
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->buffer:[B

    .line 50
    return-void
.end method

.method protected placeTo([Ljava/nio/ByteBuffer;II)I
    .registers 12
    .parameter "dsts"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 57
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->buffer:[B

    if-nez v4, :cond_6

    .line 58
    const/4 v4, 0x0

    .line 90
    :goto_5
    return v4

    .line 60
    :cond_6
    const/4 v2, 0x0

    .line 61
    .local v2, pos:I
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->buffer:[B

    array-length v1, v4

    .line 64
    .local v1, len:I
    move v0, p2

    .local v0, i:I
    :goto_b
    add-int v4, p2, p3

    if-ge v0, v4, :cond_23

    .line 65
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 67
    .local v3, rem:I
    sub-int v4, v1, v2

    if-ge v4, v3, :cond_34

    .line 69
    aget-object v4, p1, v0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->buffer:[B

    sub-int v6, v1, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 70
    move v2, v1

    .line 78
    .end local v3           #rem:I
    :cond_23
    if-eq v2, v1, :cond_3f

    .line 83
    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v5, 0x50

    new-instance v6, Ljavax/net/ssl/SSLException;

    const-string v7, "The received application data could not be fully writteninto the destination buffers"

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v4

    .line 75
    .restart local v3       #rem:I
    :cond_34
    aget-object v4, p1, v0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->buffer:[B

    invoke-virtual {v4, v5, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 76
    add-int/2addr v2, v3

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 89
    .end local v3           #rem:I
    :cond_3f
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->buffer:[B

    move v4, v1

    .line 90
    goto :goto_5
.end method
