.class public Lcom/google/googlenav/bi;
.super Lak/m;


# instance fields
.field private final a:Lcom/google/googlenav/c;

.field private final b:Lcom/google/googlenav/aL;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/c;Lcom/google/googlenav/aL;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bi;->a:Lcom/google/googlenav/c;

    iput-object p2, p0, Lcom/google/googlenav/bi;->b:Lcom/google/googlenav/aL;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x75

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/l;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lcom/google/googlenav/bi;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->I()J

    move-result-wide v1

    invoke-virtual {v0, v4, v1, v2}, Law/e;->b(IJ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlenav/bi;->a:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/bi;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/bi;->a:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v2

    invoke-virtual {v2}, Lf/h;->f()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/bi;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->ag()Lcom/google/googlenav/bH;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bH;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/s;

    invoke-virtual {p0}, Lcom/google/googlenav/s;->d()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/googlenav/s;->e()Law/e;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Law/e;->a(ILaw/e;)V

    invoke-virtual {p0, v4}, Lcom/google/googlenav/s;->a(Z)V

    goto :goto_0

    :cond_2
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Ls/l;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/google/googlenav/bi;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/bi;->d:I

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0, v2}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/bi;->d:I

    iget v0, p0, Lcom/google/googlenav/bi;->d:I

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/google/googlenav/bi;->c:Z

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public i_()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/googlenav/bi;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "s"

    :goto_0
    const/16 v1, 0x65

    const-string v2, "p"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/bi;->b:Lcom/google/googlenav/aL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/bi;->b:Lcom/google/googlenav/aL;

    iget-boolean v1, p0, Lcom/google/googlenav/bi;->c:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/aL;->a(Z)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "e"

    goto :goto_0
.end method

.method public m_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n_()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bi;->b:Lcom/google/googlenav/aL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/bi;->b:Lcom/google/googlenav/aL;

    invoke-interface {v0}, Lcom/google/googlenav/aL;->a()V

    :cond_0
    return-void
.end method
