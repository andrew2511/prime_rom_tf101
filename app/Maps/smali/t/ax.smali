.class Lt/ax;
.super Ljava/lang/Object;


# instance fields
.field final a:[I

.field final b:[I

.field final c:[I

.field final d:[I

.field e:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lt/ax;->a:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lt/ax;->b:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lt/ax;->c:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lt/ax;->d:[I

    const/4 v0, 0x0

    iput v0, p0, Lt/ax;->e:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lt/ax;->g()V

    iget-object v0, p0, Lt/ax;->a:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lt/ax;->b:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lt/ax;->c:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lt/ax;->d:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput v1, p0, Lt/ax;->e:I

    return-void
.end method

.method a(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lt/ax;->g()V

    iget-object v0, p0, Lt/ax;->a:[I

    aput v1, v0, p1

    iget-object v0, p0, Lt/ax;->b:[I

    aput v1, v0, p1

    iget-object v0, p0, Lt/ax;->c:[I

    aput v1, v0, p1

    iget-object v0, p0, Lt/ax;->d:[I

    aput v1, v0, p1

    return-void
.end method

.method a(II)V
    .locals 1

    iget-object v0, p0, Lt/ax;->a:[I

    aput p2, v0, p1

    return-void
.end method

.method a(Lt/af;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lt/ax;->g()V

    invoke-static {p1}, Lt/af;->a(Lt/af;)I

    move-result v0

    iget-object v1, p0, Lt/ax;->a:[I

    aput v3, v1, v0

    iget-object v1, p0, Lt/ax;->b:[I

    invoke-virtual {p1}, Lt/af;->c()I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lt/ax;->c:[I

    invoke-static {p1}, Lt/af;->b(Lt/af;)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lt/ax;->d:[I

    aput v3, v1, v0

    move v1, v3

    :goto_0
    invoke-static {p1}, Lt/af;->b(Lt/af;)I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lt/af;->b(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lt/ax;->d:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lt/ax;->d:[I

    aget v1, v1, v0

    if-lez v1, :cond_2

    iget v1, p0, Lt/ax;->e:I

    if-lt v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt/ax;->e:I

    :cond_2
    return-void
.end method

.method a(Lt/g;)V
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x2000

    new-array v0, v0, [B

    move v2, v1

    :goto_0
    iget-object v3, p0, Lt/ax;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v0, v2, v1}, Lt/ax;->a([BII)V

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lt/g;->a([B)V

    return-void
.end method

.method a([BII)V
    .locals 3

    const/16 v2, 0xc

    iget-object v0, p0, Lt/ax;->a:[I

    aget v0, v0, p3

    invoke-static {p1, p2, v0}, Lt/d;->a([BII)V

    add-int/lit8 v0, p2, 0x4

    iget-object v1, p0, Lt/ax;->b:[I

    aget v1, v1, p3

    invoke-static {p1, v0, v1}, Lt/d;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lt/ax;->c:[I

    aget v1, v1, p3

    invoke-static {p1, v0, v1}, Lt/d;->b([BII)V

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lt/ax;->d:[I

    aget v1, v1, p3

    invoke-static {p1, v0, v1}, Lt/d;->b([BII)V

    add-int/lit8 v0, v0, 0x2

    sub-int v1, v0, v2

    invoke-static {p1, v1, v2}, Lt/d;->c([BII)I

    move-result v1

    invoke-static {p1, v0, v1}, Lt/d;->a([BII)V

    return-void
.end method

.method b()I
    .locals 2

    invoke-virtual {p0}, Lt/ax;->g()V

    iget v0, p0, Lt/ax;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lt/ax;->e:I

    invoke-virtual {p0, v0}, Lt/ax;->a(I)V

    return v0
.end method

.method b(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lt/ax;->g()V

    iget-object v0, p0, Lt/ax;->a:[I

    aput v1, v0, p1

    iget-object v0, p0, Lt/ax;->c:[I

    aput v1, v0, p1

    iget-object v0, p0, Lt/ax;->d:[I

    aput v1, v0, p1

    iget-object v0, p0, Lt/ax;->b:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    return-void
.end method

.method b(Lt/g;)V
    .locals 6

    const/16 v5, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0}, Lt/ax;->g()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Lt/g;->b([B)V

    iput v1, p0, Lt/ax;->e:I

    move v2, v1

    :goto_0
    iget-object v3, p0, Lt/ax;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lt/ax;->a:[I

    invoke-static {v0, v2}, Lt/d;->a([BI)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lt/ax;->b:[I

    invoke-static {v0, v2}, Lt/d;->a([BI)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lt/ax;->c:[I

    invoke-static {v0, v2}, Lt/d;->b([BI)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lt/ax;->d:[I

    invoke-static {v0, v2}, Lt/d;->b([BI)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Lt/d;->a([BI)I

    move-result v3

    sub-int v4, v2, v5

    invoke-static {v0, v4, v5}, Lt/d;->c([BII)I

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, v1}, Lt/ax;->b(I)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lt/ax;->d:[I

    aget v3, v3, v1

    if-lez v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lt/ax;->e:I

    goto :goto_1

    :cond_2
    return-void
.end method

.method c()I
    .locals 5

    const v0, 0x7fffffff

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, v2

    move v2, v0

    move v0, v4

    :goto_0
    iget v3, p0, Lt/ax;->e:I

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Lt/ax;->d(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lt/ax;->a:[I

    aget v3, v3, v0

    if-ge v3, v2, :cond_0

    iget-object v1, p0, Lt/ax;->a:[I

    aget v1, v1, v0

    move v2, v1

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method c(I)Z
    .locals 2

    iget-object v0, p0, Lt/ax;->b:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lt/ax;->e:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lt/ax;->d:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method d(I)Z
    .locals 1

    iget-object v0, p0, Lt/ax;->d:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()J
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    move-wide v1, v5

    :goto_0
    iget v3, p0, Lt/ax;->e:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lt/ax;->b:[I

    aget v3, v3, v0

    if-lez v3, :cond_0

    iget-object v3, p0, Lt/ax;->b:[I

    aget v3, v3, v0

    int-to-long v3, v3

    :goto_1
    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-wide v3, v5

    goto :goto_1

    :cond_1
    return-wide v1
.end method

.method f()I
    .locals 4

    const/4 v3, 0x0

    move v0, v3

    move v1, v3

    :goto_0
    iget v2, p0, Lt/ax;->e:I

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lt/ax;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    return v1
.end method

.method g()V
    .locals 0

    return-void
.end method
