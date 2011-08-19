.class public final Lorg/codehaus/jackson/io/MergedStream;
.super Ljava/io/InputStream;
.source "MergedStream.java"


# instance fields
.field _buffer:[B

.field protected final _context:Lorg/codehaus/jackson/io/IOContext;

.field final _end:I

.field final _in:Ljava/io/InputStream;

.field _ptr:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V
    .locals 0
    .parameter "context"
    .parameter "in"
    .parameter "buf"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/codehaus/jackson/io/MergedStream;->_context:Lorg/codehaus/jackson/io/IOContext;

    .line 30
    iput-object p2, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    .line 31
    iput-object p3, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    .line 32
    iput p4, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    .line 33
    iput p5, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    .line 34
    return-void
.end method

.method private freeMergedBuffer()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    .line 136
    .local v0, buf:[B
    if-eqz v0, :cond_0

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    .line 138
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v0, :cond_0

    .line 40
    iget v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    sub-int/2addr v0, v1

    .line 42
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    .line 49
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 50
    return-void
.end method

.method public mark(I)V
    .locals 1
    .parameter "readlimit"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 57
    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    iget v2, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 70
    .local v0, c:I
    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    iget v2, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    if-lt v1, v2, :cond_0

    .line 71
    invoke-direct {p0}, Lorg/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    :cond_0
    move v1, v0

    .line 75
    .end local v0           #c:I
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/io/MergedStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v1, :cond_2

    .line 88
    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    iget v2, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    sub-int v0, v1, v2

    .line 89
    .local v0, avail:I
    if-le p3, v0, :cond_0

    .line 90
    move p3, v0

    .line 92
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    iget v2, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    .line 94
    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    iget v2, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    if-lt v1, v2, :cond_1

    .line 95
    invoke-direct {p0}, Lorg/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    :cond_1
    move v1, p3

    .line 99
    .end local v0           #avail:I
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 108
    :cond_0
    return-void
.end method

.method public skip(J)J
    .locals 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const-wide/16 v1, 0x0

    .line 115
    .local v1, count:J
    iget-object v3, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v3, :cond_1

    .line 116
    iget v3, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    iget v4, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    sub-int v0, v3, v4

    .line 118
    .local v0, amount:I
    int-to-long v3, v0

    cmp-long v3, v3, p1

    if-lez v3, :cond_0

    .line 119
    iget v3, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    long-to-int v4, p1

    add-int/2addr v3, v4

    iput v3, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    move-wide v3, p1

    .line 130
    .end local v0           #amount:I
    :goto_0
    return-wide v3

    .line 122
    .restart local v0       #amount:I
    :cond_0
    invoke-direct {p0}, Lorg/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    .line 123
    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 124
    int-to-long v3, v0

    sub-long/2addr p1, v3

    .line 127
    .end local v0           #amount:I
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_2

    .line 128
    iget-object v3, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_2
    move-wide v3, v1

    .line 130
    goto :goto_0
.end method
