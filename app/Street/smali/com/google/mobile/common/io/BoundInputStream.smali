.class public Lcom/google/mobile/common/io/BoundInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private base:Ljava/io/InputStream;

.field private buf:[B

.field private bufPos:I

.field private bufSize:I

.field private remaining:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/google/mobile/common/io/BoundInputStream;->base:Ljava/io/InputStream;

    iput p2, p0, Lcom/google/mobile/common/io/BoundInputStream;->remaining:I

    const/16 v0, 0x1000

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/mobile/common/io/BoundInputStream;->buf:[B

    return-void
.end method

.method private checkBuf()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/mobile/common/io/BoundInputStream;->remaining:I

    if-gtz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/mobile/common/io/BoundInputStream;->bufPos:I

    iget v1, p0, Lcom/google/mobile/common/io/BoundInputStream;->bufSize:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/mobile/common/io/BoundInputStream;->base:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/mobile/common/io/BoundInputStream;->buf:[B

    iget v2, p0, Lcom/google/mobile/common/io/BoundInputStream;->remaining:I

    iget-object v3, p0, Lcom/google/mobile/common/io/BoundInputStream;->buf:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/google/mobile/common/io/BoundInputStream;->bufSize:I

    iget v0, p0, Lcom/google/mobile/common/io/BoundInputStream;->bufSize:I

    if-gtz v0, :cond_1

    iput v4, p0, Lcom/google/mobile/common/io/BoundInputStream;->remaining:I

    move v0, v4

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/google/mobile/common/io/BoundInputStream;->bufPos:I

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2

    iget v0, p0, Lcom/google/mobile/common/io/BoundInputStream;->bufSize:I

    iget v1, p0, Lcom/google/mobile/common/io/BoundInputStream;->bufPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/mobile/common/io/BoundInputStream;->checkBuf()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/mobile/common/io/BoundInputStream;->remaining:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/mobile/common/io/BoundInputStream;->remaining:I

    iget-object v0, p0, Lcom/google/mobile/common/io/BoundInputStream;->buf:[B

    iget v1, p0, Lcom/google/mobile/common/io/BoundInputStream;->bufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/mobile/common/io/BoundInputStream;->bufPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/mobile/common/io/BoundInputStream;->checkBuf()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/mobile/common/io/BoundInputStream;->bufSize:I

    iget v1, p0, Lcom/google/mobile/common/io/BoundInputStream;->bufPos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/mobile/common/io/BoundInputStream;->buf:[B

    iget v2, p0, Lcom/google/mobile/common/io/BoundInputStream;->bufPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/mobile/common/io/BoundInputStream;->bufPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/mobile/common/io/BoundInputStream;->bufPos:I

    iget v1, p0, Lcom/google/mobile/common/io/BoundInputStream;->remaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/mobile/common/io/BoundInputStream;->remaining:I

    goto :goto_0
.end method
