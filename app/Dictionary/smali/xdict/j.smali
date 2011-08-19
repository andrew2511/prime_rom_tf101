.class public final Lxdict/j;
.super Ljava/util/zip/InflaterInputStream;


# instance fields
.field private L:Ljava/util/zip/CRC32;

.field private M:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lxdict/j;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lxdict/j;->L:Ljava/util/zip/CRC32;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lxdict/j;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    iget-object v0, p0, Lxdict/j;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxdict/j;->M:Z

    return-void
.end method

.method public final e()Lxdict/h;
    .locals 8

    const/16 v7, 0x8

    new-instance v0, Lxdict/h;

    invoke-direct {v0}, Lxdict/h;-><init>()V

    iget-object v1, p0, Lxdict/j;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lxdict/j;->L:Ljava/util/zip/CRC32;

    new-instance v3, Ljava/util/zip/CheckedInputStream;

    invoke-direct {v3, v1, v2}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    invoke-static {v3}, Lxdict/h;->b(Ljava/io/InputStream;)I

    move-result v1

    const v4, 0x8b1f

    if-eq v1, v4, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not the GZIP format !!!!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v3}, Lxdict/h;->a(Ljava/io/InputStream;)I

    move-result v1

    if-eq v1, v7, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported compression method !!!!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v3}, Lxdict/h;->a(Ljava/io/InputStream;)I

    move-result v1

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lxdict/h;->a(Ljava/io/InputStream;I)V

    const/16 v4, 0xa

    iput v4, v0, Lxdict/h;->D:I

    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    invoke-static {v3}, Lxdict/h;->b(Ljava/io/InputStream;)I

    move-result v4

    iput v4, v0, Lxdict/h;->E:I

    iget v4, v0, Lxdict/h;->D:I

    iget v5, v0, Lxdict/h;->E:I

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v0, Lxdict/h;->D:I

    invoke-static {v3}, Lxdict/h;->a(Ljava/io/InputStream;)I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v0, Lxdict/h;->A:B

    invoke-static {v3}, Lxdict/h;->a(Ljava/io/InputStream;)I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v0, Lxdict/h;->B:B

    invoke-static {v3}, Lxdict/h;->b(Ljava/io/InputStream;)I

    move-result v4

    iput v4, v0, Lxdict/h;->F:I

    invoke-static {v3}, Lxdict/h;->b(Ljava/io/InputStream;)I

    move-result v4

    iput v4, v0, Lxdict/h;->G:I

    invoke-static {v3}, Lxdict/h;->b(Ljava/io/InputStream;)I

    move-result v4

    iput v4, v0, Lxdict/h;->chunkLength:I

    invoke-static {v3}, Lxdict/h;->b(Ljava/io/InputStream;)I

    move-result v4

    iput v4, v0, Lxdict/h;->H:I

    iget v4, v0, Lxdict/h;->H:I

    new-array v4, v4, [I

    iput-object v4, v0, Lxdict/h;->C:[I

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, Lxdict/h;->H:I

    if-ge v4, v5, :cond_2

    iget-object v5, v0, Lxdict/h;->C:[I

    invoke-static {v3}, Lxdict/h;->b(Ljava/io/InputStream;)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    and-int/lit8 v4, v1, 0x8

    if-ne v4, v7, :cond_4

    :goto_1
    invoke-static {v3}, Lxdict/h;->a(Ljava/io/InputStream;)I

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v0, Lxdict/h;->D:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lxdict/h;->D:I

    goto :goto_1

    :cond_3
    iget v4, v0, Lxdict/h;->D:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lxdict/h;->D:I

    :cond_4
    and-int/lit8 v4, v1, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_6

    :goto_2
    invoke-static {v3}, Lxdict/h;->a(Ljava/io/InputStream;)I

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v0, Lxdict/h;->D:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lxdict/h;->D:I

    goto :goto_2

    :cond_5
    iget v4, v0, Lxdict/h;->D:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lxdict/h;->D:I

    :cond_6
    and-int/lit8 v1, v1, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-static {v3}, Lxdict/h;->b(Ljava/io/InputStream;)I

    move-result v2

    if-eq v2, v1, :cond_7

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupt GZIP header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget v1, v0, Lxdict/h;->D:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lxdict/h;->D:I

    :cond_8
    invoke-virtual {v0}, Lxdict/h;->d()V

    iget-object v1, p0, Lxdict/j;->L:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    return-object v0
.end method

.method public final read([BII)I
    .locals 2

    const/4 v1, -0x1

    iget-boolean v0, p0, Lxdict/j;->M:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lxdict/j;->M:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lxdict/j;->L:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_0
.end method
