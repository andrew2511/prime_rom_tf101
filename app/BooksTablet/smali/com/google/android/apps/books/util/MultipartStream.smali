.class public Lcom/google/android/apps/books/util/MultipartStream;
.super Ljava/lang/Object;
.source "MultipartStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;,
        Lcom/google/android/apps/books/util/MultipartStream$IllegalBoundaryException;,
        Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;
    }
.end annotation


# static fields
.field protected static final BOUNDARY_PREFIX:[B = null

.field public static final CR:B = 0xdt

.field public static final DASH:B = 0x2dt

.field protected static final DEFAULT_BUFSIZE:I = 0x1000

.field protected static final FIELD_SEPARATOR:[B = null

.field public static final HEADER_PART_SIZE_MAX:I = 0x2800

.field protected static final HEADER_SEPARATOR:[B = null

.field private static final KEEP_REGION_PAD:I = 0x3

.field public static final LF:B = 0xat

.field protected static final STREAM_TERMINATOR:[B


# instance fields
.field private boundary:[B

.field private boundaryLength:I

.field private bufSize:I

.field private buffer:[B

.field private head:I

.field private headerEncoding:Ljava/lang/String;

.field private input:Ljava/io/InputStream;

.field private keepRegion:I

.field private tail:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 132
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/apps/books/util/MultipartStream;->HEADER_SEPARATOR:[B

    .line 140
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/apps/books/util/MultipartStream;->FIELD_SEPARATOR:[B

    .line 148
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/apps/books/util/MultipartStream;->STREAM_TERMINATOR:[B

    .line 155
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/apps/books/util/MultipartStream;->BOUNDARY_PREFIX:[B

    return-void

    .line 132
    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data

    .line 140
    :array_1
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 148
    nop

    :array_2
    .array-data 0x1
        0x2dt
        0x2dt
    .end array-data

    .line 155
    nop

    :array_3
    .array-data 0x1
        0xdt
        0xat
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1
    .parameter "input"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/util/MultipartStream;-><init>(Ljava/io/InputStream;[BI)V

    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BI)V
    .locals 4
    .parameter "input"
    .parameter "boundary"
    .parameter "bufSize"

    .prologue
    const/4 v3, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/google/android/apps/books/util/MultipartStream;->input:Ljava/io/InputStream;

    .line 264
    iput p3, p0, Lcom/google/android/apps/books/util/MultipartStream;->bufSize:I

    .line 265
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->buffer:[B

    .line 269
    array-length v0, p2

    sget-object v1, Lcom/google/android/apps/books/util/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    .line 270
    array-length v0, p2

    sget-object v1, Lcom/google/android/apps/books/util/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundaryLength:I

    .line 271
    array-length v0, p2

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->keepRegion:I

    .line 272
    sget-object v0, Lcom/google/android/apps/books/util/MultipartStream;->BOUNDARY_PREFIX:[B

    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    sget-object v2, Lcom/google/android/apps/books/util/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    sget-object v1, Lcom/google/android/apps/books/util/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v1, v1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    iput v3, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    .line 278
    iput v3, p0, Lcom/google/android/apps/books/util/MultipartStream;->tail:I

    .line 279
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/util/MultipartStream;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->tail:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/books/util/MultipartStream;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/google/android/apps/books/util/MultipartStream;->tail:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/util/MultipartStream;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/books/util/MultipartStream;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    return p1
.end method

.method static synthetic access$108(Lcom/google/android/apps/books/util/MultipartStream;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    return v0
.end method

.method static synthetic access$112(Lcom/google/android/apps/books/util/MultipartStream;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    return v0
.end method

.method static synthetic access$114(Lcom/google/android/apps/books/util/MultipartStream;J)I
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/util/MultipartStream;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->keepRegion:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/util/MultipartStream;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->buffer:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/util/MultipartStream;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->bufSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/util/MultipartStream;)Ljava/io/InputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->input:Ljava/io/InputStream;

    return-object v0
.end method

.method public static arrayequals([B[BI)Z
    .locals 3
    .parameter "a"
    .parameter "b"
    .parameter "count"

    .prologue
    .line 590
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 591
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 592
    const/4 v1, 0x0

    .line 595
    :goto_1
    return v1

    .line 590
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public discardBodyData()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/util/MultipartStream;->readBodyData(Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method protected findByte(BI)I
    .locals 2
    .parameter "value"
    .parameter "pos"

    .prologue
    .line 611
    move v0, p2

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->tail:I

    if-ge v0, v1, :cond_1

    .line 612
    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->buffer:[B

    aget-byte v1, v1, v0

    if-ne v1, p1, :cond_0

    move v1, v0

    .line 617
    :goto_1
    return v1

    .line 611
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected findSeparator()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 631
    const/4 v1, 0x0

    .line 632
    .local v1, match:I
    iget v3, p0, Lcom/google/android/apps/books/util/MultipartStream;->tail:I

    iget v4, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundaryLength:I

    sub-int v2, v3, v4

    .line 633
    .local v2, maxpos:I
    iget v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    .line 634
    .local v0, first:I
    :goto_0
    if-gt v0, v2, :cond_4

    iget v3, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundaryLength:I

    if-eq v1, v3, :cond_4

    .line 636
    iget-object v3, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/books/util/MultipartStream;->findByte(BI)I

    move-result v0

    .line 637
    if-eq v0, v5, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    move v3, v5

    .line 649
    :goto_1
    return v3

    .line 640
    :cond_1
    const/4 v1, 0x1

    :goto_2
    iget v3, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundaryLength:I

    if-ge v1, v3, :cond_2

    .line 641
    iget-object v3, p0, Lcom/google/android/apps/books/util/MultipartStream;->buffer:[B

    add-int v4, v0, v1

    aget-byte v3, v3, v4

    iget-object v4, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_3

    .line 635
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 646
    :cond_4
    iget v3, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundaryLength:I

    if-ne v1, v3, :cond_5

    .line 647
    const/4 v3, 0x1

    sub-int v3, v0, v3

    goto :goto_1

    :cond_5
    move v3, v5

    .line 649
    goto :goto_1
.end method

.method public getHeaderEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->headerEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public readBodyData(Ljava/io/OutputStream;)I
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    new-instance v1, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;-><init>(Lcom/google/android/apps/books/util/MultipartStream;)V

    .line 507
    .local v1, istream:Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 509
    .local v0, bytes:[B
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->read([B)I

    move-result v2

    .line 510
    .local v2, res:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 511
    if-eqz p1, :cond_1

    .line 512
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 514
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/apps/books/util/MultipartStream$ItemInputStream;->getBytesRead()J

    move-result-wide v3

    long-to-int v3, v3

    return v3

    .line 516
    :cond_2
    if-lez v2, :cond_0

    if-eqz p1, :cond_0

    .line 517
    if-eqz p1, :cond_0

    .line 518
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public readBoundary()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x2

    .line 366
    new-array v1, v3, [B

    .line 367
    .local v1, marker:[B
    const/4 v2, 0x0

    .line 369
    .local v2, nextChunk:Z
    iget v3, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    iget v4, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundaryLength:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    .line 371
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/MultipartStream;->readByte()B

    move-result v4

    aput-byte v4, v1, v3

    .line 372
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    move v3, v5

    .line 394
    :goto_0
    return v3

    .line 382
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/MultipartStream;->readByte()B

    move-result v4

    aput-byte v4, v1, v3

    .line 383
    sget-object v3, Lcom/google/android/apps/books/util/MultipartStream;->STREAM_TERMINATOR:[B

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lcom/google/android/apps/books/util/MultipartStream;->arrayequals([B[BI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 394
    goto :goto_0

    .line 385
    :cond_1
    sget-object v3, Lcom/google/android/apps/books/util/MultipartStream;->FIELD_SEPARATOR:[B

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lcom/google/android/apps/books/util/MultipartStream;->arrayequals([B[BI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    const/4 v2, 0x1

    goto :goto_1

    .line 388
    :cond_2
    new-instance v3, Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;

    const-string v4, "Unexpected characters follow a boundary"

    invoke-direct {v3, v4}, Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 392
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;

    const-string v4, "Stream ended unexpectedly"

    invoke-direct {v3, v4}, Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readByte()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    iget v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    iget v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->tail:I

    if-ne v0, v1, :cond_0

    .line 342
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    .line 344
    iget-object v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->buffer:[B

    iget v2, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    iget v3, p0, Lcom/google/android/apps/books/util/MultipartStream;->bufSize:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->tail:I

    .line 345
    iget v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->tail:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 347
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No more data is available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/util/MultipartStream;->buffer:[B

    iget v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/apps/books/util/MultipartStream;->head:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readHeaders()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 445
    const/4 v4, 0x0

    .line 446
    .local v4, i:I
    const/4 v7, 0x1

    new-array v0, v7, [B

    .line 448
    .local v0, b:[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 449
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x2800

    .line 450
    .local v6, sizeMax:I
    const/4 v5, 0x0

    .line 451
    .local v5, size:I
    :cond_0
    :goto_0
    sget-object v7, Lcom/google/android/apps/books/util/MultipartStream;->HEADER_SEPARATOR:[B

    array-length v7, v7

    if-ge v4, v7, :cond_2

    .line 453
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/MultipartStream;->readByte()B

    move-result v8

    aput-byte v8, v0, v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    add-int/lit8 v5, v5, 0x1

    .line 458
    aget-byte v7, v0, v9

    sget-object v8, Lcom/google/android/apps/books/util/MultipartStream;->HEADER_SEPARATOR:[B

    aget-byte v8, v8, v4

    if-ne v7, v8, :cond_1

    .line 459
    add-int/lit8 v4, v4, 0x1

    .line 463
    :goto_1
    if-gt v5, v6, :cond_0

    .line 464
    aget-byte v7, v0, v9

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 454
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 455
    .local v2, e:Ljava/io/IOException;
    new-instance v7, Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;

    const-string v8, "Stream ended unexpectedly"

    invoke-direct {v7, v8}, Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 461
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 468
    :cond_2
    const/4 v3, 0x0

    .line 469
    .local v3, headers:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/apps/books/util/MultipartStream;->headerEncoding:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 471
    :try_start_1
    iget-object v7, p0, Lcom/google/android/apps/books/util/MultipartStream;->headerEncoding:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 481
    :goto_2
    return-object v3

    .line 472
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 475
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 476
    goto :goto_2

    .line 478
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public setBoundary([B)V
    .locals 4
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/util/MultipartStream$IllegalBoundaryException;
        }
    .end annotation

    .prologue
    .line 419
    array-length v0, p1

    iget v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundaryLength:I

    sget-object v2, Lcom/google/android/apps/books/util/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 420
    new-instance v0, Lcom/google/android/apps/books/util/MultipartStream$IllegalBoundaryException;

    const-string v1, "The length of a boundary token can not be changed"

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/util/MultipartStream$IllegalBoundaryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    sget-object v2, Lcom/google/android/apps/books/util/MultipartStream;->BOUNDARY_PREFIX:[B

    array-length v2, v2

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    return-void
.end method

.method public setHeaderEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/android/apps/books/util/MultipartStream;->headerEncoding:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public skipPreamble()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 555
    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    iget-object v2, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    iget-object v3, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    array-length v3, v3

    sub-int/2addr v3, v5

    invoke-static {v1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 556
    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    array-length v1, v1

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundaryLength:I

    .line 559
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/MultipartStream;->discardBodyData()I

    .line 563
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/MultipartStream;->readBoundary()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 568
    iget-object v2, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    iget-object v3, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    iget-object v4, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    array-length v4, v4

    sub-int/2addr v4, v5

    invoke-static {v2, v6, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    iget-object v2, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    array-length v2, v2

    iput v2, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundaryLength:I

    .line 570
    iget-object v2, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    aput-byte v9, v2, v6

    .line 571
    iget-object v2, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    aput-byte v8, v2, v7

    :goto_0
    return v1

    .line 564
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 568
    .local v0, e:Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;
    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    iget-object v2, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    iget-object v3, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    array-length v3, v3

    sub-int/2addr v3, v5

    invoke-static {v1, v6, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    array-length v1, v1

    iput v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundaryLength:I

    .line 570
    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    aput-byte v9, v1, v6

    .line 571
    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    aput-byte v8, v1, v7

    move v1, v6

    goto :goto_0

    .line 568
    .end local v0           #e:Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    iget-object v3, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    iget-object v4, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    array-length v4, v4

    sub-int/2addr v4, v5

    invoke-static {v2, v6, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    iget-object v2, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    array-length v2, v2

    iput v2, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundaryLength:I

    .line 570
    iget-object v2, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    aput-byte v9, v2, v6

    .line 571
    iget-object v2, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    aput-byte v8, v2, v7

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 658
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 659
    .local v0, sbTemp:Ljava/lang/StringBuffer;
    const-string v1, "boundary=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 660
    iget-object v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->boundary:[B

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    const-string v1, "\'\nbufSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    iget v1, p0, Lcom/google/android/apps/books/util/MultipartStream;->bufSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 663
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
