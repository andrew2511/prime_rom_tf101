.class public Lcom/google/googlenav/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bI;


# instance fields
.field protected final a:[I

.field protected final b:[Lcom/google/googlenav/ap;

.field private c:Z

.field private d:Z

.field private volatile e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/googlenav/ac;->a:[I

    new-array v0, v1, [Lcom/google/googlenav/ap;

    iput-object v0, p0, Lcom/google/googlenav/ac;->b:[Lcom/google/googlenav/ap;

    return-void
.end method

.method private static a(Ln/a;)Ln/o;
    .locals 1

    instance-of v0, p0, Ln/i;

    if-eqz v0, :cond_0

    check-cast p0, Ln/i;

    const-string v0, "Restrictions_lock"

    invoke-interface {p0, v0}, Ln/i;->e(Ljava/lang/String;)Ln/o;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ln/o;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ln/o;->a()Z

    :cond_0
    return-void
.end method

.method private b(Ljava/io/DataInput;)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    sget-object v0, Ls/j;->e:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v8}, Law/e;->i(I)I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v8, v2}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-virtual {v4, v8}, Law/e;->d(I)I

    move-result v5

    if-ltz v5, :cond_0

    if-gt v5, v9, :cond_0

    iget-object v6, p0, Lcom/google/googlenav/ac;->a:[I

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Law/e;->d(I)I

    move-result v7

    aput v7, v6, v5

    invoke-virtual {v4, v9}, Law/e;->i(I)I

    move-result v6

    if-lez v6, :cond_0

    iget-object v3, p0, Lcom/google/googlenav/ac;->b:[Lcom/google/googlenav/ap;

    new-instance v6, Lcom/google/googlenav/ap;

    invoke-virtual {v4, v9}, Law/e;->f(I)Law/e;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/google/googlenav/ap;-><init>(Law/e;)V

    aput-object v6, v3, v5

    move v3, v8

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private d()V
    .locals 7

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Law/e;

    sget-object v3, Ls/j;->e:Law/f;

    invoke-direct {v2, v3}, Law/e;-><init>(Law/f;)V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/googlenav/ac;->b:[Lcom/google/googlenav/ap;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/google/googlenav/ac;->b:[Lcom/google/googlenav/ap;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    new-instance v4, Law/e;

    sget-object v5, Ls/j;->b:Law/f;

    invoke-direct {v4, v5}, Law/e;-><init>(Law/f;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Law/e;->h(II)V

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/googlenav/ac;->a:[I

    aget v6, v6, v3

    invoke-virtual {v4, v5, v6}, Law/e;->h(II)V

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/googlenav/ac;->b:[Lcom/google/googlenav/ap;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/google/googlenav/ap;->a()Law/e;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Law/e;->b(ILaw/e;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Law/e;->a(ILaw/e;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v4, v2}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    invoke-static {v0}, Lcom/google/googlenav/ac;->a(Ln/a;)Ln/o;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "Restrictions"

    invoke-interface {v0, v2, v3}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lcom/google/googlenav/ac;->a(Ln/o;)V

    :goto_1
    return-void

    :catch_0
    move-exception v2

    :try_start_1
    const-string v2, "Restrictions"

    invoke-interface {v0, v2}, Ln/a;->a(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/google/googlenav/ac;->a(Ln/o;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/googlenav/ac;->a(Ln/o;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ac;->e:Z

    return-void
.end method

.method public a(Ljava/io/DataInput;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/ac;->b(Ljava/io/DataInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ac;->d()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ac;->d:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CFR"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a([I)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ac;->d:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ac;->c()Z

    new-instance v0, Lcom/google/googlenav/J;

    invoke-direct {v0, p0}, Lcom/google/googlenav/J;-><init>(Lcom/google/googlenav/bI;)V

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/J;->b(J)V

    const-string v1, "5080011"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/J;->a(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    iget-object v3, p0, Lcom/google/googlenav/ac;->a:[I

    aget v4, p1, v1

    aget v3, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/J;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/J;->j()V

    return-void
.end method

.method public a(I)Z
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/ac;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ac;->b:[Lcom/google/googlenav/ap;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILf/h;Z)Z
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ac;->b:[Lcom/google/googlenav/ap;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    :cond_0
    move v0, p3

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ac;->b:[Lcom/google/googlenav/ap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/googlenav/ap;->b()[J

    move-result-object v0

    if-nez v0, :cond_2

    move v0, p3

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lf/D;->a(Lf/h;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lf/D;->a(J)J

    move-result-wide v1

    array-length v3, v0

    invoke-static {v0, v4, v3, v1, v2}, LA/r;->a([JIIJ)I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v0, v5

    if-gtz v2, :cond_3

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    cmp-long v0, v0, v5

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ac;->e:Z

    return v0
.end method

.method public c()Z
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/ac;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ac;->a(Ln/a;)Ln/o;

    move-result-object v1

    :try_start_0
    const-string v2, "Restrictions"

    invoke-static {v0, v2}, Lac/i;->a(Ln/a;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ac;->b(Ljava/io/DataInput;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ac;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-static {v1}, Lcom/google/googlenav/ac;->a(Ln/o;)V

    :goto_1
    iget-boolean v0, p0, Lcom/google/googlenav/ac;->c:Z

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "CFR"

    invoke-static {v2, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/google/googlenav/ac;->a(Ln/o;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/googlenav/ac;->a(Ln/o;)V

    throw v0
.end method
