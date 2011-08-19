.class public Lcom/google/googlenav/bw;
.super Lak/m;


# instance fields
.field private final a:Law/e;

.field private final b:Lcom/google/googlenav/bv;


# direct methods
.method public constructor <init>(Law/e;Lcom/google/googlenav/bv;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bw;->a:Law/e;

    iput-object p2, p0, Lcom/google/googlenav/bw;->b:Lcom/google/googlenav/bv;

    return-void
.end method

.method private static a(ILaw/e;Law/e;)V
    .locals 1

    invoke-virtual {p1, p0}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Law/e;->b(I)Z

    move-result v0

    invoke-virtual {p2, p0, v0}, Law/e;->b(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x5e

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->Y:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lcom/google/googlenav/bw;->a:Law/e;

    if-eqz v1, :cond_1

    new-instance v1, Law/e;

    sget-object v2, LaG/b;->x:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget-object v2, p0, Lcom/google/googlenav/bw;->a:Law/e;

    invoke-static {v5, v2, v1}, Lcom/google/googlenav/bw;->a(ILaw/e;Law/e;)V

    iget-object v2, p0, Lcom/google/googlenav/bw;->a:Law/e;

    invoke-static {v4, v2, v1}, Lcom/google/googlenav/bw;->a(ILaw/e;Law/e;)V

    iget-object v2, p0, Lcom/google/googlenav/bw;->a:Law/e;

    invoke-static {v6, v2, v1}, Lcom/google/googlenav/bw;->a(ILaw/e;Law/e;)V

    iget-object v2, p0, Lcom/google/googlenav/bw;->b:Lcom/google/googlenav/bv;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/bw;->b:Lcom/google/googlenav/bv;

    iget-object v2, v2, Lcom/google/googlenav/bv;->e:Law/e;

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/googlenav/bw;->b:Lcom/google/googlenav/bv;

    iget-object v3, v3, Lcom/google/googlenav/bv;->e:Law/e;

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILaw/e;)V

    :cond_0
    invoke-virtual {v0, v4, v1}, Law/e;->b(ILaw/e;)V

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/bw;->b:Lcom/google/googlenav/bv;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/googlenav/bw;->b:Lcom/google/googlenav/bv;

    iget-object v1, v1, Lcom/google/googlenav/bv;->a:Law/e;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/bw;->b:Lcom/google/googlenav/bv;

    iget-object v1, v1, Lcom/google/googlenav/bv;->a:Law/e;

    invoke-virtual {v0, v5, v1}, Law/e;->a(ILaw/e;)V

    :cond_2
    iget-object v1, p0, Lcom/google/googlenav/bw;->b:Lcom/google/googlenav/bv;

    iget-object v1, v1, Lcom/google/googlenav/bv;->b:Law/e;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/bw;->b:Lcom/google/googlenav/bv;

    iget-object v1, v1, Lcom/google/googlenav/bv;->b:Law/e;

    invoke-virtual {v0, v6, v1}, Law/e;->a(ILaw/e;)V

    :cond_3
    iget-object v1, p0, Lcom/google/googlenav/bw;->b:Lcom/google/googlenav/bv;

    iget-object v1, v1, Lcom/google/googlenav/bv;->c:Law/e;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlenav/bw;->b:Lcom/google/googlenav/bv;

    iget-object v2, v2, Lcom/google/googlenav/bv;->c:Law/e;

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILaw/e;)V

    :cond_4
    iget-object v1, p0, Lcom/google/googlenav/bw;->b:Lcom/google/googlenav/bv;

    iget-object v1, v1, Lcom/google/googlenav/bv;->d:Law/e;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlenav/bw;->b:Lcom/google/googlenav/bv;

    iget-object v2, v2, Lcom/google/googlenav/bv;->d:Law/e;

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILaw/e;)V

    :cond_5
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Ls/N;->Z:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
