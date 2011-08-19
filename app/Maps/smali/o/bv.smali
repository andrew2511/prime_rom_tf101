.class public Lo/bv;
.super Ljava/lang/Object;


# instance fields
.field private a:Law/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;I)I
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0}, Lo/bv;->d()V

    iget-object v0, p0, Lo/bv;->a:Law/e;

    invoke-virtual {v0, v5}, Law/e;->i(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lo/bv;->a:Law/e;

    invoke-virtual {v2, v5, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-virtual {v2, v5}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Law/e;->d(I)I

    move-result v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v2, p2, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static final c()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lo/bf;

    invoke-direct {v0}, Lo/bf;-><init>()V

    new-instance v1, Lo/bv;

    invoke-direct {v1}, Lo/bv;-><init>()V

    invoke-virtual {v0}, Lo/bf;->a()Ljava/util/Vector;

    move-result-object v2

    move v3, v4

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lo/bv;->a(Ljava/lang/String;I)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lo/bv;->a:Law/e;

    if-nez v0, :cond_0

    new-instance v0, Law/e;

    sget-object v1, Ls/T;->E:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iput-object v0, p0, Lo/bv;->a:Law/e;

    invoke-virtual {p0}, Lo/bv;->b()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iget-object v2, p0, Lo/bv;->a:Law/e;

    invoke-virtual {v2, v0, v1}, Law/e;->a(Ljava/io/InputStream;I)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/bv;->a([B)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-object v2, p0, Lo/bv;->a:Law/e;

    invoke-virtual {v2, v1}, Law/e;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/bv;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/bv;->a([B)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lo/bv;->b(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lo/bv;->a:Law/e;

    invoke-static {v0, v1}, Law/b;->i(Law/e;I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Law/e;->h(II)V

    invoke-direct {p0}, Lo/bv;->e()V

    goto :goto_0
.end method

.method protected a([B)V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "OPT_IN_HISTORY"

    invoke-interface {v0, v1, p1}, Ln/a;->a(Ljava/lang/String;[B)Z

    new-instance v0, Lo/aM;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/aM;-><init>(Lo/bv;LT/c;)V

    invoke-virtual {v0}, Lo/aM;->b()V

    return-void
.end method

.method public a(I)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lo/bv;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0, p1}, Lo/bv;->b(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    invoke-virtual {p0}, Lo/bv;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/bv;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected b()[B
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "OPT_IN_HISTORY"

    invoke-interface {v0, v1}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 3

    invoke-virtual {p0}, Lo/bv;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0, p1}, Lo/bv;->b(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lo/bv;->a:Law/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Law/e;->g(II)V

    invoke-direct {p0}, Lo/bv;->e()V

    goto :goto_0
.end method
