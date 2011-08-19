.class LSQLite/BlobR;
.super Ljava/io/InputStream;
.source "Blob.java"


# instance fields
.field private blob:LSQLite/Blob;

.field private pos:I


# direct methods
.method constructor <init>(LSQLite/Blob;)V
    .registers 3
    .parameter "blob"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 29
    iput-object p1, p0, LSQLite/BlobR;->blob:LSQLite/Blob;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, LSQLite/BlobR;->pos:I

    .line 31
    return-void
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v1, p0, LSQLite/BlobR;->blob:LSQLite/Blob;

    iget v1, v1, LSQLite/Blob;->size:I

    iget v2, p0, LSQLite/BlobR;->pos:I

    sub-int v0, v1, v2

    .line 40
    .local v0, ret:I
    if-gez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    move v1, v0

    goto :goto_b
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, LSQLite/BlobR;->blob:LSQLite/Blob;

    invoke-virtual {v0}, LSQLite/Blob;->close()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, LSQLite/BlobR;->blob:LSQLite/Blob;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, LSQLite/BlobR;->pos:I

    .line 74
    return-void
.end method

.method public mark(I)V
    .registers 2
    .parameter "limit"

    .prologue
    .line 48
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 100
    const/4 v2, 0x1

    new-array v0, v2, [B

    .line 101
    .local v0, b:[B
    iget-object v2, p0, LSQLite/BlobR;->blob:LSQLite/Blob;

    iget v3, p0, LSQLite/BlobR;->pos:I

    array-length v4, v0

    invoke-virtual {v2, v0, v5, v3, v4}, LSQLite/Blob;->read([BIII)I

    move-result v1

    .line 102
    .local v1, n:I
    if-lez v1, :cond_17

    .line 103
    iget v2, p0, LSQLite/BlobR;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, LSQLite/BlobR;->pos:I

    .line 104
    aget-byte v2, v0, v5

    .line 106
    :goto_16
    return v2

    :cond_17
    const/4 v2, -0x1

    goto :goto_16
.end method

.method public read([B)I
    .registers 7
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v1, p0, LSQLite/BlobR;->blob:LSQLite/Blob;

    const/4 v2, 0x0

    iget v3, p0, LSQLite/BlobR;->pos:I

    array-length v4, p1

    invoke-virtual {v1, p1, v2, v3, v4}, LSQLite/Blob;->read([BIII)I

    move-result v0

    .line 117
    .local v0, n:I
    if-lez v0, :cond_13

    .line 118
    iget v1, p0, LSQLite/BlobR;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, LSQLite/BlobR;->pos:I

    move v1, v0

    .line 121
    :goto_12
    return v1

    :cond_13
    const/4 v1, -0x1

    goto :goto_12
.end method

.method public read([BII)I
    .registers 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 133
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_9

    .line 134
    array-length v1, p1

    sub-int p3, v1, p2

    .line 136
    :cond_9
    if-gez p3, :cond_d

    move v1, v3

    .line 147
    :goto_c
    return v1

    .line 139
    :cond_d
    if-nez p3, :cond_11

    .line 140
    const/4 v1, 0x0

    goto :goto_c

    .line 142
    :cond_11
    iget-object v1, p0, LSQLite/BlobR;->blob:LSQLite/Blob;

    iget v2, p0, LSQLite/BlobR;->pos:I

    invoke-virtual {v1, p1, p2, v2, p3}, LSQLite/Blob;->read([BIII)I

    move-result v0

    .line 143
    .local v0, n:I
    if-lez v0, :cond_22

    .line 144
    iget v1, p0, LSQLite/BlobR;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, LSQLite/BlobR;->pos:I

    move v1, v0

    .line 145
    goto :goto_c

    :cond_22
    move v1, v3

    .line 147
    goto :goto_c
.end method

.method public reset()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    return-void
.end method

.method public skip(J)J
    .registers 7
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget v2, p0, LSQLite/BlobR;->pos:I

    int-to-long v2, v2

    add-long v0, v2, p1

    .line 82
    .local v0, ret:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_11

    .line 83
    const-wide/16 v0, 0x0

    .line 84
    const/4 v2, 0x0

    iput v2, p0, LSQLite/BlobR;->pos:I

    .line 91
    :goto_10
    return-wide v0

    .line 85
    :cond_11
    iget-object v2, p0, LSQLite/BlobR;->blob:LSQLite/Blob;

    iget v2, v2, LSQLite/Blob;->size:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_26

    .line 86
    iget-object v2, p0, LSQLite/BlobR;->blob:LSQLite/Blob;

    iget v2, v2, LSQLite/Blob;->size:I

    int-to-long v0, v2

    .line 87
    iget-object v2, p0, LSQLite/BlobR;->blob:LSQLite/Blob;

    iget v2, v2, LSQLite/Blob;->size:I

    iput v2, p0, LSQLite/BlobR;->pos:I

    goto :goto_10

    .line 89
    :cond_26
    long-to-int v2, v0

    iput v2, p0, LSQLite/BlobR;->pos:I

    goto :goto_10
.end method
