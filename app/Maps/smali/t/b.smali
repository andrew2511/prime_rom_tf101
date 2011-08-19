.class Lt/b;
.super Lak/m;


# instance fields
.field a:Law/e;

.field b:Lt/aB;

.field final synthetic c:Lt/w;


# direct methods
.method private constructor <init>(Lt/w;Law/e;Lt/aB;)V
    .locals 0

    iput-object p1, p0, Lt/b;->c:Lt/w;

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p2, p0, Lt/b;->a:Law/e;

    iput-object p3, p0, Lt/b;->b:Lt/aB;

    return-void
.end method

.method synthetic constructor <init>(Lt/w;Law/e;Lt/aB;Lt/av;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lt/b;-><init>(Lt/w;Law/e;Lt/aB;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 2

    iget-object v0, p0, Lt/b;->a:Law/e;

    invoke-virtual {v0}, Law/e;->f()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Ls/r;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->i(I)I

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v2, v3}, Law/e;->e(II)Law/e;

    move-result-object v0

    iget-object v1, p0, Lt/b;->b:Lt/aB;

    invoke-virtual {v1, v0}, Lt/aB;->a(Law/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lt/b;->b:Lt/aB;

    invoke-virtual {v1}, Lt/aB;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lt/b;->c:Lt/w;

    invoke-static {v1}, Lt/w;->a(Lt/w;)Lt/ao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lt/ao;->a(Law/e;)V

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lt/b;->b:Lt/aB;

    invoke-virtual {v0}, Lt/aB;->h()V

    return-void
.end method

.method public h_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
