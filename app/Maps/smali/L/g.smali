.class public LL/g;
.super LL/l;


# instance fields
.field a:Z

.field b:Z

.field c:LW/m;

.field d:LW/k;

.field e:Z

.field f:LW/k;

.field g:Lw/A;

.field h:Z

.field i:Law/e;

.field j:LL/h;

.field k:J

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Law/e;

.field r:J

.field s:Law/e;


# direct methods
.method public constructor <init>(Lw/l;Lal/b;LL/i;LL/c;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, LL/l;-><init>(Lw/l;Lal/b;LL/i;LL/c;)V

    iput-object v0, p0, LL/g;->c:LW/m;

    iput-object v0, p0, LL/g;->d:LW/k;

    iput-boolean v1, p0, LL/g;->e:Z

    iput-object v0, p0, LL/g;->f:LW/k;

    iput-boolean v1, p0, LL/g;->h:Z

    sget-object v0, LL/h;->a:LL/h;

    iput-object v0, p0, LL/g;->j:LL/h;

    iput-wide v2, p0, LL/g;->k:J

    iput-boolean v1, p0, LL/g;->l:Z

    iput-boolean v1, p0, LL/g;->m:Z

    iput-boolean v1, p0, LL/g;->n:Z

    iput-boolean v1, p0, LL/g;->o:Z

    iput-boolean v1, p0, LL/g;->p:Z

    iput-wide v2, p0, LL/g;->r:J

    return-void
.end method

.method private a(J)Z
    .locals 4

    const/4 v1, 0x4

    iget-object v0, p0, LL/g;->q:Law/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, LL/g;->q:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LL/g;->q:Law/e;

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    iget-wide v0, p0, LL/g;->r:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)Z
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, LL/g;->u:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v6

    iget-object v0, p0, LL/g;->g:Lw/A;

    if-eqz v0, :cond_2

    iget-object v0, p0, LL/g;->g:Lw/A;

    invoke-interface {v0}, Lw/A;->f()J

    move-result-wide v0

    sub-long v0, v6, v0

    const-wide/32 v2, 0xafc80

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    move v0, v8

    :goto_0
    iget-object v1, p0, LL/g;->f:LW/k;

    if-eqz v1, :cond_10

    if-eq p1, v10, :cond_0

    iget-boolean v1, p0, LL/g;->e:Z

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    iget-object v1, p0, LL/g;->f:LW/k;

    iget-object v2, p0, LL/g;->g:Lw/A;

    invoke-virtual {p0, v1, v2}, LL/g;->a(LW/k;Lw/A;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_0
    move v3, v8

    :goto_1
    iget-object v1, p0, LL/g;->c:LW/m;

    if-eqz v1, :cond_f

    if-nez v3, :cond_1

    if-eqz v0, :cond_f

    iget-object v1, p0, LL/g;->x:LL/c;

    iget-object v2, p0, LL/g;->c:LW/m;

    iget-object v4, p0, LL/g;->g:Lw/A;

    invoke-virtual {v1, v2, v4}, LL/c;->a(LW/m;Lw/A;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_1
    move v2, v8

    :goto_2
    if-eqz v0, :cond_3

    move v1, v8

    :goto_3
    add-int/2addr v1, v5

    if-eqz v3, :cond_4

    move v4, v8

    :goto_4
    add-int/2addr v1, v4

    if-eqz v2, :cond_5

    move v4, v8

    :goto_5
    add-int/2addr v1, v4

    if-ge v1, v10, :cond_6

    move v0, v5

    :goto_6
    return v0

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_3

    :cond_4
    move v4, v5

    goto :goto_4

    :cond_5
    move v4, v5

    goto :goto_5

    :cond_6
    if-nez v2, :cond_7

    if-ne p1, v8, :cond_7

    move v0, v5

    goto :goto_6

    :cond_7
    if-eqz v3, :cond_8

    if-nez v0, :cond_b

    move v1, v8

    :goto_7
    iput-boolean v1, p0, LL/g;->e:Z

    iget-object v1, p0, LL/g;->f:LW/k;

    iput-object v1, p0, LL/g;->d:LW/k;

    :cond_8
    if-eqz v0, :cond_c

    iget-object v0, p0, LL/g;->g:Lw/A;

    move-object v1, v0

    :goto_8
    if-eqz v2, :cond_d

    iget-object v0, p0, LL/g;->c:LW/m;

    move-object v2, v0

    :goto_9
    if-eqz v3, :cond_e

    iget-object v0, p0, LL/g;->f:LW/k;

    move-object v3, v0

    :goto_a
    iget-boolean v4, p0, LL/g;->b:Z

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, LL/g;->b(Lw/A;LW/m;LW/k;ZI)Law/e;

    move-result-object v0

    iget-object v4, p0, LL/g;->x:LL/c;

    invoke-virtual {v4, v1, v2, v3}, LL/c;->a(Lw/A;LW/m;LW/k;)V

    iget-object v1, p0, LL/g;->q:Law/e;

    if-nez v1, :cond_9

    new-instance v1, Law/e;

    sget-object v2, Lbd/a;->Y:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iput-object v1, p0, LL/g;->q:Law/e;

    iput-wide v6, p0, LL/g;->r:J

    :cond_9
    iget-object v1, p0, LL/g;->q:Law/e;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Law/e;->a(ILaw/e;)V

    iget-object v0, p0, LL/g;->c:LW/m;

    if-eqz v0, :cond_a

    iget-object v0, p0, LL/g;->s:Law/e;

    if-nez v0, :cond_a

    iget-object v0, p0, LL/g;->c:LW/m;

    invoke-virtual {v0}, LW/m;->i()Law/e;

    move-result-object v0

    iput-object v0, p0, LL/g;->s:Law/e;

    :cond_a
    move v0, v8

    goto :goto_6

    :cond_b
    move v1, v5

    goto :goto_7

    :cond_c
    move-object v1, v9

    goto :goto_8

    :cond_d
    move-object v2, v9

    goto :goto_9

    :cond_e
    move-object v3, v9

    goto :goto_a

    :cond_f
    move v2, v5

    goto :goto_2

    :cond_10
    move v3, v5

    goto/16 :goto_1
.end method

.method private d()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, LL/g;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, LL/g;->h()V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LL/g;->u:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v0

    iget-object v2, p0, LL/g;->s:Law/e;

    iget-object v3, p0, LL/g;->c:LW/m;

    invoke-virtual {p0, v2, v3}, LL/g;->a(Law/e;LW/m;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, LL/g;->a(J)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0}, LL/g;->e()V

    move v0, v8

    goto :goto_0

    :cond_2
    iget-object v2, p0, LL/g;->f:LW/k;

    if-eqz v2, :cond_3

    iget-object v2, p0, LL/g;->f:LW/k;

    iget-wide v2, v2, LW/k;->a:J

    iget-object v4, p0, LL/g;->x:LL/c;

    invoke-virtual {v4}, LL/c;->d()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_b

    :cond_3
    move v2, v8

    :goto_1
    iget-object v3, p0, LL/g;->c:LW/m;

    if-eqz v3, :cond_4

    iget-object v3, p0, LL/g;->c:LW/m;

    invoke-virtual {v3}, LW/m;->f()J

    move-result-wide v3

    iget-object v5, p0, LL/g;->x:LL/c;

    invoke-virtual {v5}, LL/c;->c()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_c

    :cond_4
    move v3, v8

    :goto_2
    iget-boolean v4, p0, LL/g;->m:Z

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    iput-boolean v7, p0, LL/g;->m:Z

    :cond_5
    iget-boolean v4, p0, LL/g;->n:Z

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    iput-boolean v7, p0, LL/g;->n:Z

    :cond_6
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    iget-boolean v2, p0, LL/g;->o:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, LL/g;->p:Z

    if-eqz v2, :cond_8

    :cond_7
    iput-boolean v7, p0, LL/g;->o:Z

    iput-boolean v7, p0, LL/g;->p:Z

    :cond_8
    iget-boolean v2, p0, LL/g;->m:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, LL/g;->n:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, LL/g;->o:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, LL/g;->p:Z

    if-eqz v2, :cond_d

    :cond_9
    invoke-direct {p0}, LL/g;->i()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    invoke-direct {p0, v2}, LL/g;->c(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0}, LL/g;->h()V

    :cond_a
    invoke-direct {p0, v0, v1}, LL/g;->a(J)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, LL/g;->e()V

    move v0, v8

    goto/16 :goto_0

    :cond_b
    move v2, v7

    goto :goto_1

    :cond_c
    move v3, v7

    goto :goto_2

    :cond_d
    move v0, v7

    goto/16 :goto_0
.end method

.method private e()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x3

    iget-object v0, p0, LL/g;->u:Lw/l;

    invoke-interface {v0, v5}, Lw/l;->b(I)V

    sget-object v0, LL/h;->b:LL/h;

    iput-object v0, p0, LL/g;->j:LL/h;

    iget-object v0, p0, LL/g;->q:Law/e;

    iput-object v0, p0, LL/g;->i:Law/e;

    iget-object v0, p0, LL/g;->w:LL/i;

    iget-object v1, p0, LL/g;->u:Lw/l;

    iget-object v2, p0, LL/g;->v:Lal/b;

    iget-object v3, p0, LL/g;->i:Law/e;

    invoke-virtual {v0, v1, v2, v3}, LL/i;->a(Lw/l;Lal/b;Law/e;)V

    iget-object v0, p0, LL/g;->u:Lw/l;

    iget-object v1, p0, LL/g;->i:Law/e;

    iget-object v2, p0, LL/g;->s:Law/e;

    invoke-interface {v0, v1, v2}, Lw/l;->b(Law/e;Law/e;)V

    iput-object v4, p0, LL/g;->q:Law/e;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LL/g;->r:J

    iput-object v4, p0, LL/g;->s:Law/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, LL/g;->l:Z

    iget-object v0, p0, LL/g;->u:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v0

    iput-wide v0, p0, LL/g;->k:J

    iget-object v0, p0, LL/g;->u:Lw/l;

    iget-wide v1, p0, LL/g;->k:J

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    invoke-interface {v0, v5, v1, v2}, Lw/l;->a(IJ)V

    return-void
.end method

.method private f()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, LL/g;->i:Law/e;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0}, LL/g;->g()V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, LL/g;->k:J

    sget-object v1, LL/h;->a:LL/h;

    iput-object v1, p0, LL/g;->j:LL/h;

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, LL/g;->u:Lw/l;

    invoke-interface {v1}, Lw/l;->b()J

    move-result-wide v1

    iget-wide v3, p0, LL/g;->k:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3a98

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    invoke-direct {p0}, LL/g;->g()V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    const/4 v1, 0x3

    iget-boolean v0, p0, LL/g;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LL/g;->u:Lw/l;

    invoke-interface {v0, v1}, Lw/l;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LL/g;->l:Z

    iget-object v0, p0, LL/g;->u:Lw/l;

    invoke-interface {v0, v1}, Lw/l;->c(I)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LL/g;->m:Z

    iput-boolean v0, p0, LL/g;->n:Z

    iput-boolean v0, p0, LL/g;->o:Z

    iput-boolean v0, p0, LL/g;->p:Z

    return-void
.end method

.method private i()I
    .locals 1

    iget-boolean v0, p0, LL/g;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, LL/g;->o:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, LL/g;->p:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, LL/g;->n:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    invoke-virtual {p0}, LL/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LL/g;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, LL/g;->j:LL/h;

    sget-object v1, LL/q;->a:[I

    iget-object v2, p0, LL/g;->j:LL/h;

    invoke-virtual {v2}, LL/h;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_1

    :cond_1
    if-nez v0, :cond_0

    return-void

    :pswitch_0
    invoke-direct {p0}, LL/g;->d()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, LL/g;->f()Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IIZ)V
    .locals 4

    invoke-virtual {p0, p1, p2}, LL/g;->a(II)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    if-nez p3, :cond_0

    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, LL/g;->a:Z

    :cond_1
    iput-boolean p3, p0, LL/g;->b:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(LW/k;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LW/k;->a()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, LL/g;->f:LW/k;

    invoke-direct {p0}, LL/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LL/g;->d:LW/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, LL/g;->f:LW/k;

    iget-wide v0, v0, LW/k;->a:J

    iget-object v2, p0, LL/g;->d:LW/k;

    iget-wide v2, v2, LW/k;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :cond_2
    iget-object v0, p0, LL/g;->d:LW/k;

    if-nez v0, :cond_4

    iput-boolean v5, p0, LL/g;->m:Z

    :cond_3
    :goto_1
    iget-boolean v0, p0, LL/g;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move v2, v4

    :goto_2
    iget-object v3, p0, LL/g;->d:LW/k;

    invoke-virtual {v3}, LW/k;->a()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, LL/g;->d:LW/k;

    invoke-virtual {v3, v2}, LW/k;->a(I)LW/g;

    move-result-object v3

    iget-object v3, v3, LW/g;->a:Ljava/lang/Long;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_3
    iget-object v3, p0, LL/g;->f:LW/k;

    invoke-virtual {v3}, LW/k;->a()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, LL/g;->f:LW/k;

    invoke-virtual {v3, v2}, LW/k;->a(I)LW/g;

    move-result-object v3

    iget-object v3, v3, LW/g;->a:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x5

    iget-object v2, p0, LL/g;->f:LW/k;

    invoke-virtual {v2}, LW/k;->a()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le v0, v1, :cond_3

    iput-boolean v5, p0, LL/g;->m:Z

    goto :goto_1
.end method

.method public a(LW/m;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LW/m;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, LL/g;->c:LW/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, LL/g;->c:LW/m;

    invoke-virtual {v0, p1}, LW/m;->a(LW/m;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput-object p1, p0, LL/g;->c:LW/m;

    invoke-direct {p0}, LL/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LL/g;->n:Z

    goto :goto_0
.end method

.method public a(Law/e;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LL/g;->i:Law/e;

    return-void
.end method

.method public a(Lw/A;)V
    .locals 5

    const/4 v4, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, LL/g;->g:Lw/A;

    invoke-direct {p0}, LL/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LL/g;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, LL/g;->f:LW/k;

    iget-object v1, p0, LL/g;->g:Lw/A;

    invoke-virtual {p0, v0, v1}, LL/g;->a(LW/k;Lw/A;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v4, p0, LL/g;->o:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, LL/g;->x:LL/c;

    invoke-virtual {v0}, LL/c;->a()Lw/A;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LL/g;->g:Lw/A;

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/k;->a(Lw/A;Lw/A;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4069

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iput-boolean v4, p0, LL/g;->p:Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, LL/g;->c:LW/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, LL/g;->c:LW/m;

    invoke-virtual {v0, p1}, LW/m;->a(I)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, LL/g;->j:LL/h;

    sget-object v1, LL/h;->a:LL/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, LL/g;->h:Z

    return-void
.end method

.method protected c()Z
    .locals 1

    iget-boolean v0, p0, LL/g;->a:Z

    return v0
.end method
