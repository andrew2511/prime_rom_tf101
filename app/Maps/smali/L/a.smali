.class public LL/a;
.super LL/l;


# instance fields
.field a:J

.field b:LL/p;

.field c:F

.field d:Z

.field e:Z

.field f:Z

.field g:Ljava/util/ArrayList;

.field h:Z

.field i:Lw/A;

.field j:J

.field k:LW/k;

.field l:Z

.field m:Law/e;

.field n:J

.field o:LW/k;

.field p:J


# direct methods
.method public constructor <init>(Lw/l;Lal/b;LL/i;LL/c;)V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, LL/l;-><init>(Lw/l;Lal/b;LL/i;LL/c;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LL/a;->a:J

    sget-object v0, LL/p;->a:LL/p;

    iput-object v0, p0, LL/a;->b:LL/p;

    const/4 v0, 0x0

    iput v0, p0, LL/a;->c:F

    iput-boolean v2, p0, LL/a;->d:Z

    iput-boolean v2, p0, LL/a;->e:Z

    iput-boolean v2, p0, LL/a;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LL/a;->g:Ljava/util/ArrayList;

    iput-boolean v2, p0, LL/a;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, LL/a;->l:Z

    iput-wide v3, p0, LL/a;->n:J

    iput-wide v3, p0, LL/a;->p:J

    invoke-interface {p1}, Lw/l;->b()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb80

    add-long/2addr v0, v2

    const-wide/32 v2, 0x112a880

    sub-long/2addr v0, v2

    iput-wide v0, p0, LL/a;->a:J

    return-void
.end method

.method private a(J)V
    .locals 4

    iget-wide v0, p0, LL/a;->p:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, LL/a;->p:J

    iget-object v0, p0, LL/a;->u:Lw/l;

    const/4 v1, 0x1

    iget-wide v2, p0, LL/a;->p:J

    invoke-interface {v0, v1, v2, v3}, Lw/l;->a(IJ)V

    :cond_0
    return-void
.end method

.method private b(J)Z
    .locals 6

    const-wide/32 v4, 0x1d4c0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, LL/b;->a:[I

    iget-object v1, p0, LL/a;->b:LL/p;

    invoke-virtual {v1}, LL/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_0
    return v0

    :pswitch_0
    iget-wide v0, p0, LL/a;->a:J

    sub-long v0, p1, v0

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, LL/a;->h:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    :pswitch_2
    iget-object v0, p0, LL/a;->u:Lw/l;

    invoke-interface {v0}, Lw/l;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, LL/a;->a:J

    sub-long v0, p1, v0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    :pswitch_3
    iget-boolean v0, p0, LL/a;->f:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, LL/a;->l:Z

    if-nez v0, :cond_4

    iget-object v0, p0, LL/a;->m:Law/e;

    if-nez v0, :cond_4

    invoke-virtual {p0}, LL/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lw/A;)Z
    .locals 2

    invoke-interface {p1}, Lw/A;->a()F

    move-result v0

    const/high16 v1, 0x4220

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lw/A;->e()F

    move-result v0

    const/high16 v1, 0x3fc0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, LL/p;->a:LL/p;

    iput-object v0, p0, LL/a;->b:LL/p;

    iget-boolean v0, p0, LL/a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LL/a;->u:Lw/l;

    invoke-interface {v0, v2}, Lw/l;->a(Z)V

    iget-object v0, p0, LL/a;->u:Lw/l;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lw/l;->c(I)V

    iput-boolean v2, p0, LL/a;->e:Z

    iget-object v0, p0, LL/a;->u:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v0

    iput-wide v0, p0, LL/a;->a:J

    :cond_0
    invoke-direct {p0}, LL/a;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, LL/a;->k:LW/k;

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, LL/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LL/a;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, LL/a;->i:Lw/A;

    return-void
.end method


# virtual methods
.method a()V
    .locals 14

    const-wide/32 v12, 0x112a880

    const/4 v11, 0x0

    const/4 v2, 0x0

    const-wide/32 v9, 0x1d4c0

    const/4 v8, 0x1

    move v0, v8

    :cond_0
    :goto_0
    if-eqz v0, :cond_8

    iget-object v0, p0, LL/a;->u:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v6

    iget-object v0, p0, LL/a;->b:LL/p;

    sget-object v1, LL/p;->a:LL/p;

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v6, v7}, LL/a;->b(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, LL/a;->d()V

    :cond_1
    sget-object v0, LL/b;->a:[I

    iget-object v1, p0, LL/a;->b:LL/p;

    invoke-virtual {v1}, LL/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v0, v11

    :goto_2
    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v6, v7}, LL/a;->b(J)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LL/p;->b:LL/p;

    iput-object v0, p0, LL/a;->b:LL/p;

    move v0, v8

    goto :goto_2

    :pswitch_1
    iget-wide v0, p0, LL/a;->a:J

    sub-long v0, v6, v0

    cmp-long v0, v12, v0

    if-gtz v0, :cond_3

    iget-object v0, p0, LL/a;->u:Lw/l;

    invoke-interface {v0, v8}, Lw/l;->b(I)V

    iput-boolean v8, p0, LL/a;->e:Z

    iget-object v0, p0, LL/a;->u:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v0

    iput-wide v0, p0, LL/a;->a:J

    iget-object v0, p0, LL/a;->u:Lw/l;

    invoke-interface {v0, v8}, Lw/l;->a(Z)V

    sget-object v0, LL/p;->c:LL/p;

    iput-object v0, p0, LL/a;->b:LL/p;

    move v0, v8

    goto :goto_2

    :cond_3
    iget-wide v0, p0, LL/a;->a:J

    add-long/2addr v0, v12

    invoke-direct {p0, v0, v1}, LL/a;->a(J)V

    move v0, v11

    goto :goto_2

    :pswitch_2
    iget-boolean v0, p0, LL/a;->h:Z

    if-eqz v0, :cond_4

    iput-wide v6, p0, LL/a;->j:J

    iget-object v0, p0, LL/a;->u:Lw/l;

    invoke-interface {v0}, Lw/l;->f()V

    sget-object v0, LL/p;->d:LL/p;

    iput-object v0, p0, LL/a;->b:LL/p;

    move v0, v8

    goto :goto_2

    :cond_4
    iget-wide v0, p0, LL/a;->a:J

    add-long/2addr v0, v9

    invoke-direct {p0, v0, v1}, LL/a;->a(J)V

    move v0, v11

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, LL/a;->k:LW/k;

    if-eqz v0, :cond_5

    sget-object v0, LL/p;->e:LL/p;

    iput-object v0, p0, LL/a;->b:LL/p;

    move v0, v8

    goto :goto_2

    :cond_5
    iget-wide v0, p0, LL/a;->a:J

    add-long/2addr v0, v9

    invoke-direct {p0, v0, v1}, LL/a;->a(J)V

    move v0, v11

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, LL/a;->i:Lw/A;

    if-eqz v0, :cond_6

    iget-object v1, p0, LL/a;->i:Lw/A;

    iget-object v3, p0, LL/a;->k:LW/k;

    iget-boolean v4, p0, LL/a;->d:Z

    const/16 v5, 0xd

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LL/a;->a(Lw/A;LW/m;LW/k;ZI)Law/e;

    move-result-object v0

    iput-object v0, p0, LL/a;->m:Law/e;

    iput-wide v6, p0, LL/a;->n:J

    iget-object v0, p0, LL/a;->k:LW/k;

    iput-object v0, p0, LL/a;->o:LW/k;

    iget-object v0, p0, LL/a;->u:Lw/l;

    iget-object v1, p0, LL/a;->m:Law/e;

    invoke-static {v2}, LW/a;->a(LW/a;)Law/e;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lw/l;->b(Law/e;Law/e;)V

    iget-object v0, p0, LL/a;->x:LL/c;

    iget-object v1, p0, LL/a;->i:Lw/A;

    iget-object v3, p0, LL/a;->k:LW/k;

    invoke-virtual {v0, v1, v2, v3}, LL/c;->a(Lw/A;LW/m;LW/k;)V

    sget-object v0, LL/p;->f:LL/p;

    iput-object v0, p0, LL/a;->b:LL/p;

    iget-object v0, p0, LL/a;->u:Lw/l;

    invoke-interface {v0, v11}, Lw/l;->a(Z)V

    move v0, v8

    goto/16 :goto_2

    :cond_6
    iget-wide v0, p0, LL/a;->a:J

    add-long/2addr v0, v9

    invoke-direct {p0, v0, v1}, LL/a;->a(J)V

    move v0, v11

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, p0, LL/a;->m:Law/e;

    if-nez v0, :cond_7

    invoke-direct {p0}, LL/a;->d()V

    move v0, v8

    goto/16 :goto_2

    :cond_7
    iget-wide v0, p0, LL/a;->a:J

    add-long/2addr v0, v9

    invoke-direct {p0, v0, v1}, LL/a;->a(J)V

    goto/16 :goto_1

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method a(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LL/a;->p:J

    :cond_0
    return-void
.end method

.method a(IIZ)V
    .locals 2

    iput-boolean p3, p0, LL/a;->d:Z

    invoke-virtual {p0, p1, p2}, LL/a;->a(II)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iput v0, p0, LL/a;->c:F

    :cond_0
    return-void
.end method

.method a(LW/k;)V
    .locals 6

    iget-object v0, p0, LL/a;->b:LL/p;

    sget-object v1, LL/p;->d:LL/p;

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x3e8

    iget-wide v2, p1, LW/k;->a:J

    iget-wide v4, p0, LL/a;->j:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, LL/a;->u:Lw/l;

    invoke-interface {v0}, Lw/l;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, LL/a;->k:LW/k;

    goto :goto_0
.end method

.method a(LW/m;)V
    .locals 0

    return-void
.end method

.method a(Law/e;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LL/a;->m:Law/e;

    return-void
.end method

.method a(Lw/A;)V
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x0

    sget-object v0, LL/b;->a:[I

    iget-object v1, p0, LL/a;->b:LL/p;

    invoke-virtual {v1}, LL/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, LL/a;->b(Lw/A;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, LL/a;->e()V

    :goto_1
    iget-object v0, p0, LL/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LL/a;->h:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, LL/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LL/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/A;

    invoke-virtual {p0, v0, p1, v3}, LL/a;->a(Lw/A;Lw/A;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, LL/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0}, LL/a;->e()V

    iget-object v0, p0, LL/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1}, LL/a;->b(Lw/A;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LL/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/A;

    invoke-virtual {p0, v0, p1, v3}, LL/a;->a(Lw/A;Lw/A;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-direct {p0}, LL/a;->e()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, LL/a;->b(Lw/A;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LL/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/A;

    invoke-virtual {p0, v0, p1, v3}, LL/a;->a(Lw/A;Lw/A;I)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-direct {p0}, LL/a;->e()V

    goto :goto_0

    :cond_6
    iput-object p1, p0, LL/a;->i:Lw/A;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method a(Z)V
    .locals 1

    iget-boolean v0, p0, LL/a;->f:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, LL/a;->f:Z

    :cond_0
    return-void
.end method

.method b(I)V
    .locals 0

    return-void
.end method

.method b(Z)V
    .locals 0

    iput-boolean p1, p0, LL/a;->l:Z

    return-void
.end method

.method b()Z
    .locals 2

    iget-object v0, p0, LL/a;->b:LL/p;

    sget-object v1, LL/p;->a:LL/p;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LL/a;->b:LL/p;

    sget-object v1, LL/p;->b:LL/p;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Z)V
    .locals 0

    return-void
.end method

.method c()Z
    .locals 2

    iget v0, p0, LL/a;->c:F

    iget-boolean v1, p0, LL/a;->d:Z

    if-eqz v1, :cond_0

    const v1, 0x3e99999a

    :goto_0
    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const v1, 0x3f333333

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
