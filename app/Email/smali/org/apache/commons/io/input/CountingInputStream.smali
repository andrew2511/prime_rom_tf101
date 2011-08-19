.class public Lorg/apache/commons/io/input/CountingInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "CountingInputStream.java"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    return-void
.end method


# virtual methods
.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->read()I

    move-result v0

    .line 89
    .local v0, found:I
    iget-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_0

    const-wide/16 v3, 0x1

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    .line 90
    return v0

    .line 89
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public read([B)I
    .locals 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;->read([B)I

    move-result v0

    .line 58
    .local v0, found:I
    iget-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_0

    int-to-long v3, v0

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    .line 59
    return v0

    .line 58
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->read([BII)I

    move-result v0

    .line 75
    .local v0, found:I
    iget-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_0

    int-to-long v3, v0

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    .line 76
    return v0

    .line 75
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 4
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/input/ProxyInputStream;->skip(J)J

    move-result-wide v0

    .line 104
    .local v0, skip:J
    iget-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    .line 105
    return-wide v0
.end method
