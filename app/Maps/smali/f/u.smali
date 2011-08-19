.class public Lf/u;
.super Lf/Y;


# instance fields
.field private final d:Z

.field private final e:Lf/v;

.field private final f:Lcom/google/googlenav/ui/bV;

.field private final g:Lcom/google/googlenav/ui/P;

.field private h:Lf/w;


# direct methods
.method public constructor <init>(Lf/v;Lcom/google/googlenav/ui/P;Lcom/google/googlenav/ui/bV;Z)V
    .locals 2

    invoke-direct {p0}, Lf/Y;-><init>()V

    iput-object p1, p0, Lf/u;->e:Lf/v;

    iput-object p2, p0, Lf/u;->g:Lcom/google/googlenav/ui/P;

    iput-object p3, p0, Lf/u;->f:Lcom/google/googlenav/ui/bV;

    iput-boolean p4, p0, Lf/u;->d:Z

    if-eqz p2, :cond_0

    new-instance v0, Lf/d;

    invoke-direct {v0, p0}, Lf/d;-><init>(Lf/u;)V

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/P;->a(Lcom/google/googlenav/ui/bo;)V

    :cond_0
    if-eqz p3, :cond_1

    new-instance v0, Lf/c;

    invoke-direct {v0, p0}, Lf/c;-><init>(Lf/u;)V

    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/bV;->a(Lcom/google/googlenav/ui/aJ;)V

    :cond_1
    invoke-virtual {p1}, Lf/v;->t()I

    move-result v0

    invoke-virtual {p1}, Lf/v;->s()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lf/u;->c(II)V

    return-void
.end method

.method private f(Lf/h;)Z
    .locals 3

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0, p1}, Lf/v;->c(Lf/h;)LaF/a;

    move-result-object v0

    iget-boolean v1, p0, Lf/u;->d:Z

    if-eqz v1, :cond_0

    iget v1, v0, LaF/a;->a:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v2}, Lf/v;->t()I

    move-result v2

    mul-int/lit8 v2, v2, 0x7

    if-ge v1, v2, :cond_0

    iget v0, v0, LaF/a;->b:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v1}, Lf/v;->s()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 1

    iget-object v0, p0, Lf/u;->g:Lcom/google/googlenav/ui/P;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/u;->g:Lcom/google/googlenav/ui/P;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/P;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILf/h;)F
    .locals 1

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0, p1}, Lf/v;->c(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public a()I
    .locals 1

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0}, Lf/v;->n()I

    move-result v0

    return v0
.end method

.method public a(Lf/C;)I
    .locals 1

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0, p1}, Lf/v;->b(Lf/C;)I

    move-result v0

    return v0
.end method

.method public a(Lf/h;)I
    .locals 1

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0, p1}, Lf/v;->e(Lf/h;)I

    move-result v0

    return v0
.end method

.method protected a(Lf/h;Lf/l;II)Lf/h;
    .locals 1

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0, p1, p2, p3, p4}, Lf/v;->a(Lf/h;Lf/l;II)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    invoke-direct {p0}, Lf/u;->r()V

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0, p1}, Lf/v;->b(I)V

    return-void
.end method

.method public a(II)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lf/u;->j()V

    invoke-direct {p0}, Lf/u;->r()V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lf/u;->a(ZZZ)V

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0}, Lf/v;->d()Lf/h;

    move-result-object v0

    iget-object v1, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v1}, Lf/v;->c()Lf/l;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lf/w;->a(Lf/h;IILf/l;)Lf/w;

    move-result-object v0

    iput-object v0, p0, Lf/u;->h:Lf/w;

    return-void
.end method

.method public a(LG/Z;)V
    .locals 0

    return-void
.end method

.method protected a(Lf/h;LaF/a;)V
    .locals 1

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0, p1, p2}, Lf/v;->b(Lf/h;LaF/a;)V

    return-void
.end method

.method public a(Lf/h;Lf/l;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf/u;->d(Lf/h;Lf/l;)V

    return-void
.end method

.method protected a(Lf/h;Lf/l;Lf/h;LaF/a;)V
    .locals 1

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0, p1, p2, p3, p4}, Lf/v;->a(Lf/h;Lf/l;Lf/h;LaF/a;)V

    return-void
.end method

.method protected a(Lf/l;II)V
    .locals 3

    iget-object v0, p0, Lf/u;->g:Lcom/google/googlenav/ui/P;

    if-nez v0, :cond_0

    invoke-static {}, LA/n;->a()V

    invoke-virtual {p0, p2, p3}, Lf/u;->b(II)Lf/h;

    move-result-object v0

    neg-int v1, p2

    neg-int v2, p3

    invoke-virtual {v0, v1, v2, p1}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lf/u;->e(Lf/h;Lf/l;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lf/u;->g:Lcom/google/googlenav/ui/P;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/P;->b(Lf/l;II)V

    goto :goto_0
.end method

.method public a([Lf/h;IIILf/l;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p5}, Lf/u;->a(Lf/l;)V

    invoke-direct {p0}, Lf/u;->r()V

    aget-object v0, p1, p3

    iget-object v1, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v1, v0}, Lf/v;->d(Lf/h;)V

    invoke-direct {p0, v0}, Lf/u;->f(Lf/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lf/u;->j()V

    invoke-virtual {p0}, Lf/u;->e()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p0, v0, v6, v2}, Lf/u;->a(ZZZ)V

    new-instance v0, Lf/w;

    int-to-long v1, p4

    sget-wide v3, Lf/w;->a:J

    mul-long v4, v1, v3

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lf/w;-><init>([Lf/h;IIJI)V

    iput-object v0, p0, Lf/u;->h:Lf/w;

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lf/u;->c(Lf/h;)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0}, Lf/v;->o()I

    move-result v0

    return v0
.end method

.method public b(Lf/C;)I
    .locals 1

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0, p1}, Lf/v;->e(Lf/C;)I

    move-result v0

    return v0
.end method

.method public b(II)Lf/h;
    .locals 1

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0, p1, p2}, Lf/v;->b(II)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lf/h;Lf/l;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lf/u;->j()V

    invoke-direct {p0}, Lf/u;->r()V

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lf/u;->f()Lf/l;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v1, v0}, Lf/v;->a(Lf/l;)V

    iget-object v1, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v1}, Lf/v;->c()Lf/l;

    move-result-object v1

    invoke-virtual {p1, v4, v4, v1}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v1

    invoke-direct {p0, v1}, Lf/u;->f(Lf/h;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lf/u;->e()Lf/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    :goto_1
    invoke-virtual {p0}, Lf/u;->f()Lf/l;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    :goto_2
    invoke-virtual {p0, v2, v0, v5}, Lf/u;->a(ZZZ)V

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0, v1}, Lf/v;->d(Lf/h;)V

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0}, Lf/v;->d()Lf/h;

    move-result-object v0

    iget-object v2, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v2}, Lf/v;->c()Lf/l;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lf/h;->a(Lf/h;Lf/l;)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, LA/h;->c(I)I

    move-result v0

    new-instance v2, Lf/w;

    iget-object v3, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v3}, Lf/v;->d()Lf/h;

    move-result-object v3

    invoke-virtual {p0, v0}, Lf/u;->b(I)I

    move-result v0

    invoke-direct {v2, v3, v1, v0, v4}, Lf/w;-><init>(Lf/h;Lf/h;II)V

    iput-object v2, p0, Lf/u;->h:Lf/w;

    :goto_3
    return-void

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    move v0, v4

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v1}, Lf/u;->c(Lf/h;)V

    goto :goto_3

    :cond_3
    move-object v0, p2

    goto :goto_0
.end method

.method public c()Lf/h;
    .locals 1

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0}, Lf/v;->l()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lf/h;Lf/l;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lf/u;->j()V

    invoke-direct {p0}, Lf/u;->r()V

    invoke-virtual {p0}, Lf/u;->e()Lf/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p0}, Lf/u;->f()Lf/l;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lf/u;->a(ZZZ)V

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0, p1}, Lf/v;->a(Lf/h;)V

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0, p2}, Lf/v;->a(Lf/l;)V

    invoke-virtual {p0}, Lf/u;->n()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public d()Lf/h;
    .locals 1

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0}, Lf/v;->m()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public e()Lf/h;
    .locals 1

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0}, Lf/v;->d()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public f()Lf/l;
    .locals 1

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0}, Lf/v;->c()Lf/l;

    move-result-object v0

    return-object v0
.end method

.method public g()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Lf/C;
    .locals 1

    iget-object v0, p0, Lf/u;->e:Lf/v;

    invoke-virtual {v0}, Lf/v;->b()Lf/C;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lf/u;->h:Lf/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/u;->h:Lf/w;

    invoke-virtual {v0}, Lf/w;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lf/u;->j()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lf/u;->e:Lf/v;

    iget-object v1, p0, Lf/u;->h:Lf/w;

    invoke-virtual {v1}, Lf/w;->a()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/v;->a(Lf/h;)V

    goto :goto_0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lf/u;->h:Lf/w;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lf/u;->h:Lf/w;

    invoke-virtual {p0}, Lf/u;->n()V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 2

    invoke-virtual {p0}, Lf/u;->f()Lf/l;

    move-result-object v0

    invoke-virtual {v0}, Lf/l;->c()Lf/l;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lf/l;->a()I

    move-result v0

    invoke-virtual {p0}, Lf/u;->e()Lf/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lf/u;->a(Lf/h;)I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    invoke-virtual {p0}, Lf/u;->f()Lf/l;

    move-result-object v0

    invoke-virtual {v0}, Lf/l;->d()Lf/l;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lf/l;->a()I

    move-result v0

    invoke-static {}, Lf/l;->e()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lf/u;->h:Lf/w;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
