.class LSQLite/BlobW;
.super Ljava/io/OutputStream;
.source "Blob.java"


# instance fields
.field private blob:LSQLite/Blob;

.field private pos:I


# direct methods
.method constructor <init>(LSQLite/Blob;)V
    .registers 3
    .parameter "blob"

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 175
    iput-object p1, p0, LSQLite/BlobW;->blob:LSQLite/Blob;

    .line 176
    const/4 v0, 0x0

    iput v0, p0, LSQLite/BlobW;->pos:I

    .line 177
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, LSQLite/BlobW;->blob:LSQLite/Blob;

    invoke-virtual {v0}, LSQLite/Blob;->close()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, LSQLite/BlobW;->blob:LSQLite/Blob;

    .line 193
    const/4 v0, 0x0

    iput v0, p0, LSQLite/BlobW;->pos:I

    .line 194
    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    return-void
.end method

.method public write(I)V
    .registers 8
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    new-array v0, v5, [B

    .line 203
    .local v0, b:[B
    int-to-byte v1, p1

    aput-byte v1, v0, v4

    .line 204
    iget v1, p0, LSQLite/BlobW;->pos:I

    iget-object v2, p0, LSQLite/BlobW;->blob:LSQLite/Blob;

    iget v3, p0, LSQLite/BlobW;->pos:I

    invoke-virtual {v2, v0, v4, v3, v5}, LSQLite/Blob;->write([BIII)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, LSQLite/BlobW;->pos:I

    .line 205
    return-void
.end method

.method public write([B)V
    .registers 7
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    if-eqz p1, :cond_14

    array-length v0, p1

    if-lez v0, :cond_14

    .line 214
    iget v0, p0, LSQLite/BlobW;->pos:I

    iget-object v1, p0, LSQLite/BlobW;->blob:LSQLite/Blob;

    const/4 v2, 0x0

    iget v3, p0, LSQLite/BlobW;->pos:I

    array-length v4, p1

    invoke-virtual {v1, p1, v2, v3, v4}, LSQLite/Blob;->write([BIII)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, LSQLite/BlobW;->pos:I

    .line 216
    :cond_14
    return-void
.end method

.method public write([BII)V
    .registers 7
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    if-eqz p1, :cond_c

    .line 227
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_a

    .line 228
    array-length v0, p1

    sub-int p3, v0, p2

    .line 230
    :cond_a
    if-gtz p3, :cond_d

    .line 235
    :cond_c
    :goto_c
    return-void

    .line 233
    :cond_d
    iget v0, p0, LSQLite/BlobW;->pos:I

    iget-object v1, p0, LSQLite/BlobW;->blob:LSQLite/Blob;

    iget v2, p0, LSQLite/BlobW;->pos:I

    invoke-virtual {v1, p1, p2, v2, p3}, LSQLite/Blob;->write([BIII)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, LSQLite/BlobW;->pos:I

    goto :goto_c
.end method
