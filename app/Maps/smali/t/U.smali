.class Lt/U;
.super Ljava/lang/Object;


# instance fields
.field final a:[B

.field final b:I

.field c:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit16 v0, p1, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lt/U;->a:[B

    iput p1, p0, Lt/U;->b:I

    iput p2, p0, Lt/U;->c:I

    return-void
.end method

.method static a(J)[I
    .locals 10

    const/4 v9, 0x0

    const-wide/16 v7, 0x1fd3

    const/16 v6, 0x16

    const/4 v0, 0x3

    new-array v0, v0, [I

    invoke-static {p0, p1, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    rem-long v3, v1, v7

    long-to-int v3, v3

    aput v3, v0, v9

    invoke-static {v1, v2, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    const/4 v3, 0x1

    rem-long v4, v1, v7

    long-to-int v4, v4

    aput v4, v0, v3

    invoke-static {v1, v2, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    const/4 v3, 0x2

    rem-long/2addr v1, v7

    long-to-int v1, v1

    aput v1, v0, v3

    move v1, v9

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    if-gez v2, :cond_0

    aget v2, v0, v1

    add-int/lit16 v2, v2, 0x1fd3

    aput v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    invoke-virtual {p0}, Lt/U;->b()V

    iget-object v0, p0, Lt/U;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method a(I)V
    .locals 0

    invoke-virtual {p0}, Lt/U;->b()V

    iput p1, p0, Lt/U;->c:I

    return-void
.end method

.method a(JI)V
    .locals 8

    invoke-virtual {p0}, Lt/U;->b()V

    invoke-static {p1, p2}, Lt/U;->a(J)[I

    move-result-object v0

    mul-int/lit16 v1, p3, 0x400

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget v3, v0, v2

    shr-int/lit8 v3, v3, 0x3

    aget v4, v0, v2

    and-int/lit8 v4, v4, 0x7

    iget-object v5, p0, Lt/U;->a:[B

    add-int/2addr v3, v1

    aget-byte v6, v5, v3

    const/4 v7, 0x1

    shl-int v4, v7, v4

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lt/af;)V
    .locals 5

    invoke-virtual {p0}, Lt/U;->b()V

    invoke-static {p1}, Lt/af;->a(Lt/af;)I

    move-result v0

    invoke-virtual {p0, v0}, Lt/U;->b(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lt/af;->b()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lt/af;->b(I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lt/af;->a(Lt/af;)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lt/U;->a(JI)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lt/af;->a(Lt/af;)I

    move-result v0

    iget v1, p0, Lt/U;->c:I

    if-lt v0, v1, :cond_2

    invoke-static {p1}, Lt/af;->a(Lt/af;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt/U;->c:I

    :cond_2
    return-void
.end method

.method a(Lt/g;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lt/U;->c:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lt/U;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt/U;->a:[B

    invoke-interface {p1, v0}, Lt/g;->a([B)V

    return-void
.end method

.method a(Lt/g;I)V
    .locals 3

    invoke-virtual {p0, p2}, Lt/U;->d(I)V

    iget-object v0, p0, Lt/U;->a:[B

    mul-int/lit16 v1, p2, 0x400

    const/16 v2, 0x400

    invoke-interface {p1, v0, v1, v2}, Lt/g;->b([BII)V

    return-void
.end method

.method a([II)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    mul-int/lit16 v0, p2, 0x400

    move v1, v5

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    shr-int/lit8 v2, v2, 0x3

    aget v3, p1, v1

    and-int/lit8 v3, v3, 0x7

    iget-object v4, p0, Lt/U;->a:[B

    add-int/2addr v2, v0

    aget-byte v2, v4, v2

    shl-int v3, v6, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v5

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method b()V
    .locals 0

    return-void
.end method

.method b(I)V
    .locals 4

    invoke-virtual {p0}, Lt/U;->b()V

    mul-int/lit16 v0, p1, 0x400

    iget-object v1, p0, Lt/U;->a:[B

    add-int/lit16 v2, v0, 0x3fc

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method b(Lt/g;)V
    .locals 3

    invoke-virtual {p0}, Lt/U;->b()V

    iget-object v0, p0, Lt/U;->a:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lt/U;->a:[B

    array-length v2, v2

    invoke-interface {p1, v0, v1, v2}, Lt/g;->a([BII)V

    return-void
.end method

.method b(JI)Z
    .locals 1

    invoke-static {p1, p2}, Lt/U;->a(J)[I

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lt/U;->a([II)Z

    move-result v0

    return v0
.end method

.method c(I)Z
    .locals 3

    mul-int/lit16 v0, p1, 0x400

    iget-object v1, p0, Lt/U;->a:[B

    const/16 v2, 0x3fc

    invoke-static {v1, v0, v2}, Lt/d;->c([BII)I

    move-result v1

    iget-object v2, p0, Lt/U;->a:[B

    add-int/lit16 v0, v0, 0x3fc

    invoke-static {v2, v0}, Lt/d;->a([BI)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(I)V
    .locals 3

    mul-int/lit16 v0, p1, 0x400

    iget-object v1, p0, Lt/U;->a:[B

    const/16 v2, 0x3fc

    invoke-static {v1, v0, v2}, Lt/d;->c([BII)I

    move-result v1

    iget-object v2, p0, Lt/U;->a:[B

    add-int/lit16 v0, v0, 0x3fc

    invoke-static {v2, v0, v1}, Lt/d;->a([BII)V

    return-void
.end method
