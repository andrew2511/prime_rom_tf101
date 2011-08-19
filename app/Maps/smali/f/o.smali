.class public Lf/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/o;->a:[B

    return-void
.end method

.method private static a(I[BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    return v1
.end method

.method private static a([BI)I
    .locals 2

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(Ljava/io/DataInput;II)Lf/o;
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    const/4 v2, 0x2

    sub-int v2, p1, v2

    invoke-interface {p0, v2}, Ljava/io/DataInput;->skipBytes(I)I

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    mul-int/lit8 v3, v2, 0x5

    add-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    add-int/lit8 v4, v5, 0x1

    int-to-byte v0, v0

    aput-byte v0, v3, v5

    add-int/lit8 v0, v4, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    move v1, v0

    move v0, v5

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v4

    invoke-static {v4, v3, v1}, Lf/o;->a(I[BI)I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v4

    invoke-static {v4, v3, v1}, Lf/o;->a(I[BI)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    const/4 v1, 0x5

    sub-int v1, p2, v1

    invoke-interface {p0, v1}, Ljava/io/DataInput;->skipBytes(I)I

    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_0

    :cond_0
    new-instance v0, Lf/o;

    invoke-direct {v0, v3}, Lf/o;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lf/o;->a:[B

    array-length v0, v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public a(I)I
    .locals 2

    iget-object v0, p0, Lf/o;->a:[B

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lf/o;->a([BI)I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lf/o;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public b(I)I
    .locals 2

    iget-object v0, p0, Lf/o;->a:[B

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lf/o;->a([BI)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lf/o;->a:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public c(I)I
    .locals 2

    iget-object v0, p0, Lf/o;->a:[B

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x6

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
