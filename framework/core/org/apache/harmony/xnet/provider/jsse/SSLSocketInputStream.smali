.class public final Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;
.super Ljava/io/InputStream;
.source "SSLSocketInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$1;,
        Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;
    }
.end annotation


# instance fields
.field private buffer:[B

.field protected dataPoint:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;

.field private end:I

.field private end_reached:Z

.field private final owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

.field private pos:I

.field private final size:I


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;)V
    .registers 4
    .parameter "owner"

    .prologue
    const/16 v0, 0x4000

    .line 58
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->size:I

    .line 38
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->buffer:[B

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end_reached:Z

    .line 63
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$1;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->dataPoint:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;

    .line 59
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    .line 60
    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I

    return v0
.end method

.method static synthetic access$102(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I

    return p1
.end method

.method static synthetic access$120(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I

    return v0
.end method

.method static synthetic access$202(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I

    return p1
.end method

.method static synthetic access$300(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->buffer:[B

    return-object v0
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->buffer:[B

    .line 92
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->buffer:[B

    if-nez v0, :cond_11

    .line 104
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream was closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->needAppData()V

    .line 106
    :cond_11
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I

    if-ne v0, v1, :cond_1d

    .line 107
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end_reached:Z

    if-eqz v0, :cond_c

    .line 108
    const/4 v0, -0x1

    .line 115
    :goto_1c
    return v0

    :cond_1d
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_1c
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, i:I
    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->read()I

    move-result v1

    .local v1, read_b:I
    if-ne v1, v4, :cond_e

    .line 137
    if-nez v0, :cond_c

    move v2, v4

    .line 142
    :goto_b
    return v2

    :cond_c
    move v2, v0

    .line 137
    goto :goto_b

    .line 139
    :cond_e
    add-int v2, p2, v0

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 141
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_1d

    if-lt v0, p3, :cond_2

    :cond_1d
    move v2, v0

    .line 142
    goto :goto_b
.end method

.method protected setEnd()V
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end_reached:Z

    .line 71
    return-void
.end method
