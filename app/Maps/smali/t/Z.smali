.class public abstract Lt/Z;
.super Lt/l;


# instance fields
.field protected b:I

.field protected c:[[B

.field final synthetic d:Lt/aD;


# direct methods
.method protected constructor <init>(Lt/aD;)V
    .locals 1

    const/16 v0, 0x8

    iput-object p1, p0, Lt/Z;->d:Lt/aD;

    invoke-direct {p0, v0}, Lt/l;-><init>(I)V

    new-array v0, v0, [[B

    iput-object v0, p0, Lt/Z;->c:[[B

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 2

    new-instance v0, Law/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    sget-object v1, Ls/h;->g:Law/f;

    invoke-static {v1, p1, v0}, Law/b;->a(Law/f;Ljava/io/InputStream;Law/e;)I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v1

    iput v1, p0, Lt/Z;->b:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method private b(Ljava/io/DataOutput;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v4, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    new-instance v1, Law/e;

    sget-object v0, Ls/h;->c:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    new-instance v2, Law/e;

    sget-object v0, Ls/h;->d:Law/f;

    invoke-direct {v2, v0}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v2, v7, v1}, Law/e;->b(ILaw/e;)V

    iget-object v0, p0, Lt/Z;->d:Lt/aD;

    invoke-static {v0}, Lt/aD;->a(Lt/aD;)I

    move-result v0

    invoke-virtual {v1, v7, v0}, Law/e;->h(II)V

    iget-object v0, p0, Lt/Z;->d:Lt/aD;

    invoke-static {v0}, Lt/aD;->b(Lt/aD;)I

    move-result v0

    invoke-virtual {v1, v10, v0}, Law/e;->h(II)V

    const/4 v0, 0x5

    invoke-direct {p0}, Lt/Z;->m()Lt/X;

    move-result-object v3

    invoke-virtual {v3}, Lt/X;->b()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Law/e;->h(II)V

    iget-object v0, p0, Lt/Z;->d:Lt/aD;

    invoke-static {v0}, Lt/aD;->c(Lt/aD;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v8, v0}, Law/e;->a(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt/Z;->d:Lt/aD;

    invoke-static {v0}, Lt/aD;->d(Lt/aD;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v9, v8}, Law/e;->a(II)V

    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v9, v4}, Law/e;->a(II)V

    :cond_2
    invoke-direct {p0}, Lt/Z;->m()Lt/X;

    move-result-object v0

    sget-object v3, Lt/X;->a:Lt/X;

    if-eq v0, v3, :cond_3

    const/4 v0, 0x5

    invoke-direct {p0}, Lt/Z;->m()Lt/X;

    move-result-object v3

    invoke-virtual {v3}, Lt/X;->b()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Law/e;->h(II)V

    :cond_3
    invoke-virtual {p0}, Lt/Z;->i()I

    move-result v0

    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Lt/Z;->d(I)Lt/q;

    move-result-object v3

    invoke-virtual {v3}, Lt/q;->a()LG/w;

    move-result-object v3

    new-instance v4, Law/e;

    sget-object v5, Ls/P;->i:Law/f;

    invoke-direct {v4, v5}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v3}, LG/w;->c()I

    move-result v5

    invoke-virtual {v4, v8, v5}, Law/e;->h(II)V

    invoke-virtual {v3}, LG/w;->d()I

    move-result v5

    invoke-virtual {v4, v9, v5}, Law/e;->h(II)V

    invoke-virtual {v3}, LG/w;->b()I

    move-result v5

    iget-object v6, p0, Lt/Z;->d:Lt/aD;

    invoke-static {v6}, Lt/aD;->e(Lt/aD;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v10, v5}, Law/e;->h(II)V

    iget-object v5, p0, Lt/Z;->d:Lt/aD;

    iget v5, v5, Lt/aD;->g:I

    invoke-virtual {v4, v7, v5}, Law/e;->h(II)V

    const/4 v5, 0x7

    iget-object v6, p0, Lt/Z;->d:Lt/aD;

    invoke-static {v6}, Lt/aD;->f(Lt/aD;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Law/e;->h(II)V

    invoke-virtual {v3}, LG/w;->e()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v5, 0x6

    invoke-virtual {v3}, LG/w;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Law/e;->b(ILjava/lang/String;)V

    :cond_4
    const/16 v3, 0x9

    invoke-virtual {v2, v3, v4}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p1, v2}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    return-void
.end method

.method private b(Ljava/io/InputStream;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    invoke-virtual {p0}, Lt/Z;->i()I

    move-result v0

    move v1, v9

    :goto_0
    new-instance v2, Law/e;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Law/e;-><init>(Law/f;)V

    sget-object v3, Ls/h;->g:Law/f;

    invoke-static {v3, p1, v2}, Law/b;->a(Law/f;Ljava/io/InputStream;Law/e;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    if-eq v1, v0, :cond_0

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Law/e;->f(I)Law/e;

    move-result-object v3

    invoke-virtual {v3, v10}, Law/e;->d(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Law/e;->d(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Law/e;->d(I)I

    move-result v3

    iget-object v6, p0, Lt/Z;->d:Lt/aD;

    invoke-static {v6}, Lt/aD;->e(Lt/aD;)I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {v2, v10}, Law/e;->c(I)[B

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v6, v2

    :goto_1
    invoke-virtual {p0, v6}, Lt/Z;->b(I)[B

    move-result-object v7

    if-eqz v2, :cond_2

    array-length v8, v7

    sub-int/2addr v8, v6

    invoke-static {v2, v9, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-lt v1, v0, :cond_5

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v6, v9

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lt/Z;->d(I)Lt/q;

    move-result-object v2

    invoke-virtual {v2}, Lt/q;->a()LG/w;

    move-result-object v2

    invoke-virtual {v2}, LG/w;->b()I

    move-result v8

    if-ne v3, v8, :cond_3

    invoke-virtual {v2}, LG/w;->c()I

    move-result v3

    if-ne v4, v3, :cond_3

    invoke-virtual {v2}, LG/w;->d()I

    move-result v2

    if-ne v5, v2, :cond_3

    if-eqz v6, :cond_3

    iget-object v2, p0, Lt/Z;->c:[[B

    aput-object v7, v2, v1

    goto :goto_2
.end method

.method private c(Ljava/io/DataOutput;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lt/Z;->i()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    iget-object v1, p0, Lt/Z;->d:Lt/aD;

    invoke-static {v1}, Lt/aD;->b(Lt/aD;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeShort(I)V

    iget-object v1, p0, Lt/Z;->d:Lt/aD;

    invoke-static {v1}, Lt/aD;->a(Lt/aD;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeShort(I)V

    iget-object v1, p0, Lt/Z;->d:Lt/aD;

    invoke-static {v1}, Lt/aD;->g(Lt/aD;)J

    move-result-wide v1

    invoke-direct {p0}, Lt/Z;->m()Lt/X;

    move-result-object v3

    invoke-virtual {v3}, Lt/X;->a()I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v1, v3

    iget-object v3, p0, Lt/Z;->d:Lt/aD;

    invoke-static {v3}, Lt/aD;->d(Lt/aD;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2000

    :goto_0
    int-to-long v3, v3

    or-long/2addr v1, v3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x8000

    :goto_1
    int-to-long v3, v3

    or-long/2addr v1, v3

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    move v1, v5

    :goto_2
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lt/Z;->d(I)Lt/q;

    move-result-object v2

    invoke-virtual {v2}, Lt/q;->a()LG/w;

    move-result-object v2

    iget-object v3, p0, Lt/Z;->d:Lt/aD;

    iget v3, v3, Lt/aD;->g:I

    iget-object v4, p0, Lt/Z;->d:Lt/aD;

    invoke-static {v4}, Lt/aD;->f(Lt/aD;)I

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    invoke-virtual {v2}, LG/w;->c()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-virtual {v2}, LG/w;->d()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-virtual {v2}, LG/w;->b()I

    move-result v2

    iget-object v3, p0, Lt/Z;->d:Lt/aD;

    invoke-static {v3}, Lt/aD;->e(Lt/aD;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    return-void
.end method

.method private m()Lt/X;
    .locals 6

    sget-object v0, Lt/X;->a:Lt/X;

    const/4 v1, 0x0

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_0
    invoke-virtual {p0}, Lt/Z;->i()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lt/Z;->d(I)Lt/q;

    move-result-object v2

    invoke-virtual {v2}, Lt/q;->b()Lt/X;

    move-result-object v2

    sget-object v3, Lt/X;->a:Lt/X;

    if-eq v1, v3, :cond_0

    invoke-virtual {v2}, Lt/X;->b()I

    move-result v3

    invoke-virtual {v1}, Lt/X;->b()I

    move-result v4

    if-ge v3, v4, :cond_1

    :cond_0
    move-object v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lt/Z;->d:Lt/aD;

    invoke-virtual {v0}, Lt/aD;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6c

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1a

    goto :goto_0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 1

    iget-object v0, p0, Lt/Z;->d:Lt/aD;

    invoke-virtual {v0}, Lt/aD;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lt/Z;->b(Ljava/io/DataOutput;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lt/Z;->c(Ljava/io/DataOutput;)V

    goto :goto_0
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 1

    iget-object v0, p0, Lt/Z;->d:Lt/aD;

    invoke-virtual {v0}, Lt/aD;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lt/Z;->b(Ljava/io/DataInput;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lt/Z;->c(Ljava/io/DataInput;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/io/DataInput;)Z
    .locals 2

    invoke-static {p1}, Law/b;->a(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lt/Z;->a(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lt/Z;->b(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method protected b(Lt/q;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lt/Z;->i()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v2}, Lt/Z;->d(I)Lt/q;

    move-result-object v0

    invoke-virtual {v0}, Lt/q;->a()LG/w;

    move-result-object v0

    invoke-virtual {v0}, LG/w;->b()I

    move-result v0

    invoke-virtual {p1}, Lt/q;->a()LG/w;

    move-result-object v1

    invoke-virtual {v1}, LG/w;->b()I

    move-result v1

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method protected b(I)[B
    .locals 1

    new-array v0, p1, [B

    return-object v0
.end method

.method public c(Ljava/io/DataInput;)Z
    .locals 10

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lt/Z;->b:I

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0}, Lt/Z;->i()I

    move-result v2

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v4

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    iget-object v6, p0, Lt/Z;->d:Lt/aD;

    invoke-static {v6}, Lt/aD;->e(Lt/aD;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v6

    invoke-virtual {p0, v6}, Lt/Z;->b(I)[B

    move-result-object v7

    array-length v8, v7

    sub-int/2addr v8, v6

    invoke-interface {p1, v7, v8, v6}, Ljava/io/DataInput;->readFully([BII)V

    if-lt v0, v2, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lt/Z;->d(I)Lt/q;

    move-result-object v8

    invoke-virtual {v8}, Lt/q;->a()LG/w;

    move-result-object v8

    invoke-virtual {v8}, LG/w;->b()I

    move-result v9

    if-ne v5, v9, :cond_1

    invoke-virtual {v8}, LG/w;->c()I

    move-result v5

    if-ne v3, v5, :cond_1

    invoke-virtual {v8}, LG/w;->d()I

    move-result v3

    if-ne v4, v3, :cond_1

    if-eqz v6, :cond_1

    iget-object v3, p0, Lt/Z;->c:[[B

    aput-object v7, v3, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method protected l()I
    .locals 1

    iget v0, p0, Lt/Z;->b:I

    return v0
.end method
