.class public Lcom/google/googlenav/aJ;
.super Lak/m;


# instance fields
.field a:Ljava/util/List;

.field private final b:Lcom/google/googlenav/c;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/googlenav/i;

.field private final e:Z

.field private f:Lcom/google/googlenav/bl;

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/c;Ljava/lang/String;Lcom/google/googlenav/i;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/aJ;-><init>(Lcom/google/googlenav/c;Ljava/lang/String;ZZLjava/lang/String;Lcom/google/googlenav/i;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/c;Ljava/lang/String;ZZLjava/lang/String;Lcom/google/googlenav/i;)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/aJ;->b:Lcom/google/googlenav/c;

    iput-object p2, p0, Lcom/google/googlenav/aJ;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/googlenav/aJ;->d:Lcom/google/googlenav/i;

    iput-boolean p4, p0, Lcom/google/googlenav/aJ;->i:Z

    iput-object p5, p0, Lcom/google/googlenav/aJ;->j:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/googlenav/aJ;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/aJ;->g:Z

    invoke-virtual {p1}, Lcom/google/googlenav/c;->af()Lcom/google/googlenav/bH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj/X;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aJ;->a:Ljava/util/List;

    return-void
.end method

.method private l()Ljava/lang/String;
    .locals 2

    const-string v0, "hotpot-mobile-Android-widget"

    iget-object v1, p0, Lcom/google/googlenav/aJ;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "w"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "hotpot-mobile-Android-GMM"

    iget-object v1, p0, Lcom/google/googlenav/aJ;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "a"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x5d

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x6

    new-instance v0, Law/e;

    sget-object v1, Ls/y;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lcom/google/googlenav/aJ;->b:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->I()J

    move-result-wide v1

    invoke-virtual {v0, v5, v1, v2}, Law/e;->b(IJ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/aJ;->b:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlenav/aJ;->b:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/aJ;->b:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/aJ;->b:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v1

    invoke-virtual {v1}, Lf/h;->f()Law/e;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Law/e;->b(ILaw/e;)V

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/aJ;->b:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->bo()Law/e;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/googlenav/aJ;->i:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/aJ;->j:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Law/e;

    sget-object v3, Ls/y;->e:Law/f;

    invoke-direct {v2, v3}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v2, v5, v6}, Law/e;->h(II)V

    iget-object v3, p0, Lcom/google/googlenav/aJ;->j:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Law/e;->b(ILjava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Law/e;->a(ILaw/e;)V

    :cond_1
    move v2, v6

    :goto_0
    invoke-virtual {v1, v4}, Law/e;->i(I)I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v4, v2}, Law/e;->g(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/googlenav/aJ;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/googlenav/aJ;->e:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/googlenav/aJ;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/s;

    invoke-virtual {p0}, Lcom/google/googlenav/s;->d()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/google/googlenav/s;->e()Law/e;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Law/e;->a(ILaw/e;)V

    invoke-virtual {p0, v5}, Lcom/google/googlenav/s;->a(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v7, v1}, Law/e;->b(ILaw/e;)V

    const/4 v1, 0x7

    const-string v2, "hotpot-mobile-Android-GMM"

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x1

    sget-object v0, Ls/y;->f:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bl;

    invoke-direct {v1}, Lcom/google/googlenav/bl;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/aJ;->f:Lcom/google/googlenav/bl;

    invoke-virtual {v0, v4}, Law/e;->h(I)Z

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/google/googlenav/aJ;->g:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/aJ;->h:I

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v0, v4}, Law/e;->d(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/aJ;->h:I

    iget v1, p0, Lcom/google/googlenav/aJ;->h:I

    if-nez v1, :cond_3

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/google/googlenav/aJ;->g:Z

    iget-boolean v1, p0, Lcom/google/googlenav/aJ;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/aJ;->b:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->bo()Law/e;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILjava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/google/googlenav/bl;

    iget-object v2, p0, Lcom/google/googlenav/aJ;->d:Lcom/google/googlenav/i;

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/bl;-><init>(Law/e;Lcom/google/googlenav/i;)V

    iput-object v1, p0, Lcom/google/googlenav/aJ;->f:Lcom/google/googlenav/bl;

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public i_()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/googlenav/aJ;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "s"

    :goto_0
    const/16 v1, 0x55

    const-string v2, "r"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ss="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/googlenav/aJ;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/aJ;->d:Lcom/google/googlenav/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aJ;->d:Lcom/google/googlenav/i;

    iget-object v1, p0, Lcom/google/googlenav/aJ;->f:Lcom/google/googlenav/bl;

    invoke-interface {v0, v1}, Lcom/google/googlenav/i;->a(Lcom/google/googlenav/bl;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/aJ;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/aJ;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public m_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n_()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aJ;->d:Lcom/google/googlenav/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aJ;->d:Lcom/google/googlenav/i;

    invoke-interface {v0}, Lcom/google/googlenav/i;->b()V

    :cond_0
    return-void
.end method
