.class public Lcom/google/googlenav/layer/m;
.super Lak/m;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/googlenav/layer/i;

.field private d:Lcom/google/googlenav/bF;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/layer/i;)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/layer/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/layer/m;->c:Lcom/google/googlenav/layer/i;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/layer/m;->e:Z

    return-void
.end method


# virtual methods
.method public X_()V
    .locals 2

    invoke-super {p0}, Lak/m;->X_()V

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->c:Lcom/google/googlenav/layer/i;

    iget-object v1, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/layer/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/t;->l:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lcom/google/googlenav/layer/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Law/e;->b(IZ)V

    new-instance v1, Law/e;

    sget-object v2, Ls/n;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Law/e;->b(IZ)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    invoke-virtual {p0}, Lcom/google/googlenav/layer/m;->a()I

    move-result v1

    invoke-static {v1, v0, v4}, Lcom/google/googlenav/aW;->a(ILaw/e;Z)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/layer/m;->e:Z

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 7

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x1

    sget-object v0, Ls/t;->m:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/layer/m;->d:Lcom/google/googlenav/bF;

    invoke-virtual {v0, v6}, Law/e;->h(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v6}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/layer/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v4}, Law/e;->f(I)Law/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/layer/m;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/bF;->a(Law/e;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/bF;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/layer/m;->d:Lcom/google/googlenav/bF;

    invoke-virtual {v0, v5}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->b()J

    move-result-wide v1

    invoke-virtual {v0, v5}, Law/e;->e(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/googlenav/layer/m;->d:Lcom/google/googlenav/bF;

    add-long/2addr v1, v3

    invoke-virtual {v5, v1, v2}, Lcom/google/googlenav/bF;->a(J)V

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/layer/m;->d:Lcom/google/googlenav/bF;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bF;->q(Ljava/lang/String;)V

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/googlenav/layer/m;->d:Lcom/google/googlenav/bF;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/bF;->a(J)V

    goto :goto_1
.end method

.method public h_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i_()V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/layer/m;->c:Lcom/google/googlenav/layer/i;

    iget-object v1, p0, Lcom/google/googlenav/layer/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/layer/m;->d:Lcom/google/googlenav/bF;

    iget-boolean v3, p0, Lcom/google/googlenav/layer/m;->e:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/layer/i;->a(Ljava/lang/String;Lcom/google/googlenav/bF;Z)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/layer/m;->e:Z

    return v0
.end method
