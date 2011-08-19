.class public LL/j;
.super LL/l;


# static fields
.field static final a:I


# instance fields
.field b:LL/n;

.field c:J

.field d:Lw/A;

.field e:Lw/A;

.field f:Lw/A;

.field g:J

.field h:I

.field i:Z

.field j:Z

.field k:Z

.field l:I

.field m:LW/m;

.field n:LW/k;

.field o:Law/e;

.field p:Law/e;

.field q:Law/e;

.field r:Z

.field s:J

.field t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x2af80

    const-wide/high16 v1, 0x3ff0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit16 v1, v1, 0x1388

    add-int/2addr v0, v1

    sput v0, LL/j;->a:I

    return-void
.end method

.method public constructor <init>(Lw/l;Lal/b;LL/i;LL/c;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, LL/l;-><init>(Lw/l;Lal/b;LL/i;LL/c;)V

    sget-object v0, LL/n;->a:LL/n;

    iput-object v0, p0, LL/j;->b:LL/n;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LL/j;->c:J

    iput-object v3, p0, LL/j;->d:Lw/A;

    iput-object v3, p0, LL/j;->e:Lw/A;

    iput-object v3, p0, LL/j;->f:Lw/A;

    iput-wide v4, p0, LL/j;->g:J

    iput v2, p0, LL/j;->h:I

    iput-boolean v2, p0, LL/j;->i:Z

    iput-boolean v2, p0, LL/j;->j:Z

    iput-boolean v2, p0, LL/j;->k:Z

    iput v2, p0, LL/j;->l:I

    iput-object v3, p0, LL/j;->m:LW/m;

    iput-object v3, p0, LL/j;->n:LW/k;

    iput-boolean v2, p0, LL/j;->r:Z

    iput-wide v4, p0, LL/j;->s:J

    iput-boolean v2, p0, LL/j;->t:Z

    return-void
.end method

.method private a(ILw/A;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, LL/j;->n:LW/k;

    invoke-virtual {p0, v0, p2}, LL/j;->a(LW/k;Lw/A;)Z

    move-result v0

    iget-object v1, p0, LL/j;->m:LW/m;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    iget-object v1, p0, LL/j;->x:LL/c;

    iget-object v2, p0, LL/j;->m:LW/m;

    invoke-virtual {v1, v2, p2}, LL/c;->a(LW/m;Lw/A;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-object p2, p0, LL/j;->e:Lw/A;

    if-eqz v1, :cond_4

    iget-object v1, p0, LL/j;->m:LW/m;

    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, LL/j;->n:LW/k;

    move-object v3, v0

    :goto_2
    iget-object v1, p0, LL/j;->e:Lw/A;

    iget-boolean v4, p0, LL/j;->k:Z

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, LL/j;->b(Lw/A;LW/m;LW/k;ZI)Law/e;

    move-result-object v0

    iget-object v1, p0, LL/j;->x:LL/c;

    iget-object v4, p0, LL/j;->e:Lw/A;

    invoke-virtual {v1, v4, v2, v3}, LL/c;->a(Lw/A;LW/m;LW/k;)V

    iget-object v1, p0, LL/j;->o:Law/e;

    if-nez v1, :cond_1

    new-instance v1, Law/e;

    sget-object v2, Lbd/a;->Y:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iput-object v1, p0, LL/j;->o:Law/e;

    :cond_1
    iget-object v1, p0, LL/j;->o:Law/e;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Law/e;->a(ILaw/e;)V

    iget-object v0, p0, LL/j;->m:LW/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, LL/j;->p:Law/e;

    if-nez v0, :cond_2

    iget-object v0, p0, LL/j;->m:LW/m;

    invoke-virtual {v0}, LW/m;->i()Law/e;

    move-result-object v0

    iput-object v0, p0, LL/j;->p:Law/e;

    :cond_2
    iput-object v6, p0, LL/j;->n:LW/k;

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move-object v2, v6

    goto :goto_1

    :cond_5
    move-object v3, v6

    goto :goto_2
.end method

.method private a(J)Z
    .locals 6

    iget-boolean v0, p0, LL/j;->j:Z

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x75300

    :goto_0
    iget-wide v2, p0, LL/j;->g:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, LL/j;->g:J

    sub-long v2, p1, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const-wide/32 v0, 0xdbba0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Lw/A;)I
    .locals 4

    const/16 v3, 0xa

    const/16 v2, 0x9

    iget v0, p0, LL/j;->l:I

    if-nez v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    iget v0, p0, LL/j;->l:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, LL/j;->f:Lw/A;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, LL/j;->f:Lw/A;

    const/16 v1, 0x19

    invoke-virtual {p0, p1, v0, v1}, LL/j;->a(Lw/A;Lw/A;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private b(J)Z
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, LL/j;->e(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LL/j;->d:Lw/A;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, LL/j;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LL/j;->d:Lw/A;

    invoke-interface {v1}, Lw/A;->f()J

    move-result-wide v1

    sub-long v1, p1, v1

    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget-object v1, p0, LL/j;->d:Lw/A;

    invoke-interface {v1}, Lw/A;->f()J

    move-result-wide v1

    iget-object v3, p0, LL/j;->x:LL/c;

    invoke-virtual {v3}, LL/c;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    sget-object v1, LL/n;->b:LL/n;

    iput-object v1, p0, LL/j;->b:LL/n;

    iput-wide p1, p0, LL/j;->c:J

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, LL/j;->d:Lw/A;

    goto :goto_0
.end method

.method private c(J)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, LL/j;->e(J)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, LL/j;->o:Law/e;

    if-eqz v0, :cond_2

    invoke-direct {p0}, LL/j;->d()V

    move v0, v3

    :cond_0
    :goto_0
    iget-object v1, p0, LL/j;->b:LL/n;

    sget-object v2, LL/n;->b:LL/n;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, LL/j;->u:Lw/l;

    const/4 v2, 0x2

    iget-object v3, p0, LL/j;->e:Lw/A;

    invoke-interface {v3}, Lw/A;->f()J

    move-result-wide v3

    const-wide/16 v5, 0x55f0

    add-long/2addr v3, v5

    invoke-interface {v1, v2, v3, v4}, Lw/l;->a(IJ)V

    :cond_1
    return v0

    :cond_2
    invoke-direct {p0, p1, p2}, LL/j;->g(J)V

    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v1, p0, LL/j;->p:Law/e;

    iget-object v2, p0, LL/j;->m:LW/m;

    invoke-virtual {p0, v1, v2}, LL/j;->a(Law/e;LW/m;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, LL/j;->d:Lw/A;

    if-eqz v1, :cond_0

    iget-object v1, p0, LL/j;->d:Lw/A;

    invoke-direct {p0, v1}, LL/j;->b(Lw/A;)I

    move-result v1

    iget-object v2, p0, LL/j;->d:Lw/A;

    invoke-direct {p0, v1, v2}, LL/j;->a(ILw/A;)V

    iget v1, p0, LL/j;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LL/j;->l:I

    iget v1, p0, LL/j;->l:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_4

    invoke-direct {p0}, LL/j;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-direct {p0}, LL/j;->d()V

    move v0, v3

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, LL/j;->d:Lw/A;

    goto :goto_0

    :cond_6
    invoke-direct {p0}, LL/j;->d()V

    move v0, v3

    goto :goto_0
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, LL/j;->o:Law/e;

    iput-object v0, p0, LL/j;->q:Law/e;

    iget-object v0, p0, LL/j;->w:LL/i;

    iget-object v1, p0, LL/j;->u:Lw/l;

    iget-object v2, p0, LL/j;->v:Lal/b;

    iget-object v3, p0, LL/j;->q:Law/e;

    invoke-virtual {v0, v1, v2, v3}, LL/i;->a(Lw/l;Lal/b;Law/e;)V

    iget-object v0, p0, LL/j;->u:Lw/l;

    iget-object v1, p0, LL/j;->q:Law/e;

    iget-object v2, p0, LL/j;->p:Law/e;

    invoke-interface {v0, v1, v2}, Lw/l;->b(Law/e;Law/e;)V

    iput-object v4, p0, LL/j;->o:Law/e;

    iput-object v4, p0, LL/j;->p:Law/e;

    sget-object v0, LL/n;->c:LL/n;

    iput-object v0, p0, LL/j;->b:LL/n;

    iget-object v0, p0, LL/j;->u:Lw/l;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lw/l;->b(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LL/j;->t:Z

    iget-object v0, p0, LL/j;->u:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v0

    iput-wide v0, p0, LL/j;->s:J

    return-void
.end method

.method private d(J)Z
    .locals 7

    const-wide/16 v5, 0x3a98

    const/4 v0, 0x0

    iget-object v1, p0, LL/j;->q:Law/e;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    iput-wide v1, p0, LL/j;->s:J

    iget v1, p0, LL/j;->l:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-direct {p0, p1, p2}, LL/j;->g(J)V

    :goto_0
    invoke-direct {p0}, LL/j;->f()V

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, LL/j;->d:Lw/A;

    sget-object v1, LL/n;->b:LL/n;

    iput-object v1, p0, LL/j;->b:LL/n;

    goto :goto_0

    :cond_1
    iget-wide v1, p0, LL/j;->s:J

    sub-long v1, p1, v1

    cmp-long v1, v1, v5

    if-ltz v1, :cond_2

    invoke-direct {p0}, LL/j;->f()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, LL/j;->u:Lw/l;

    const/4 v2, 0x2

    iget-wide v3, p0, LL/j;->s:J

    add-long/2addr v3, v5

    invoke-interface {v1, v2, v3, v4}, Lw/l;->a(IJ)V

    goto :goto_1
.end method

.method private e()Z
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, LL/j;->o:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, LL/j;->o:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LL/j;->o:Law/e;

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(J)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, LL/d;->a:[I

    iget-object v1, p0, LL/j;->b:LL/n;

    invoke-virtual {v1}, LL/n;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v0, v4

    :goto_0
    return v0

    :pswitch_0
    move v0, v5

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, LL/j;->u:Lw/l;

    invoke-interface {v0}, Lw/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, LL/j;->f(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, LL/j;->c:J

    sub-long v0, p1, v0

    sget v2, LL/j;->a:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    :pswitch_2
    iget-boolean v0, p0, LL/j;->r:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LL/j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private f()V
    .locals 2

    const/4 v1, 0x2

    iget-boolean v0, p0, LL/j;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LL/j;->u:Lw/l;

    invoke-interface {v0, v1}, Lw/l;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LL/j;->t:Z

    iget-object v0, p0, LL/j;->u:Lw/l;

    invoke-interface {v0, v1}, Lw/l;->c(I)V

    :cond_0
    return-void
.end method

.method private f(J)Z
    .locals 6

    const-wide/16 v4, 0x55f0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LL/j;->e:Lw/A;

    if-nez v0, :cond_1

    iget-wide v0, p0, LL/j;->c:J

    sub-long v0, p1, v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, LL/j;->e:Lw/A;

    invoke-interface {v0}, Lw/A;->f()J

    move-result-wide v0

    sub-long v0, p1, v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private g(J)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, LL/j;->b:LL/n;

    sget-object v1, LL/n;->b:LL/n;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LL/j;->b:LL/n;

    sget-object v1, LL/n;->c:LL/n;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, LL/j;->e:Lw/A;

    if-eqz v0, :cond_1

    iget-object v0, p0, LL/j;->f:Lw/A;

    if-nez v0, :cond_3

    iget-object v0, p0, LL/j;->e:Lw/A;

    iput-object v0, p0, LL/j;->f:Lw/A;

    iput v4, p0, LL/j;->h:I

    :cond_1
    :goto_0
    iput-wide p1, p0, LL/j;->g:J

    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LL/j;->c:J

    iput-object v3, p0, LL/j;->d:Lw/A;

    iput-object v3, p0, LL/j;->e:Lw/A;

    const/4 v0, 0x0

    iput v0, p0, LL/j;->l:I

    sget-object v0, LL/n;->a:LL/n;

    iput-object v0, p0, LL/j;->b:LL/n;

    iput-object v3, p0, LL/j;->q:Law/e;

    iput-object v3, p0, LL/j;->o:Law/e;

    iput-object v3, p0, LL/j;->p:Law/e;

    iget-object v0, p0, LL/j;->u:Lw/l;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lw/l;->a(I)V

    return-void

    :cond_3
    iget-object v0, p0, LL/j;->e:Lw/A;

    iget-object v1, p0, LL/j;->f:Lw/A;

    const/16 v2, 0x19

    invoke-virtual {p0, v0, v1, v2}, LL/j;->a(Lw/A;Lw/A;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, LL/j;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LL/j;->h:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, LL/j;->e:Lw/A;

    iput-object v0, p0, LL/j;->f:Lw/A;

    iput v4, p0, LL/j;->h:I

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 5

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, LL/j;->b:LL/n;

    iget-object v1, p0, LL/j;->u:Lw/l;

    invoke-interface {v1}, Lw/l;->b()J

    move-result-wide v1

    sget-object v3, LL/d;->a:[I

    iget-object v4, p0, LL/j;->b:LL/n;

    invoke-virtual {v4}, LL/n;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_1

    :cond_1
    if-nez v0, :cond_0

    return-void

    :pswitch_0
    invoke-direct {p0, v1, v2}, LL/j;->b(J)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1, v2}, LL/j;->c(J)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1, v2}, LL/j;->d(J)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method a(I)V
    .locals 0

    return-void
.end method

.method a(IIZ)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2}, LL/j;->a(II)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    if-nez p3, :cond_0

    float-to-double v1, v0

    const-wide v3, 0x3fc999999999999aL

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_2

    :cond_0
    move v1, v6

    :goto_0
    iput-boolean v1, p0, LL/j;->i:Z

    if-eqz p3, :cond_3

    float-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    move v0, v6

    :goto_1
    iput-boolean v0, p0, LL/j;->j:Z

    :cond_1
    iput-boolean p3, p0, LL/j;->k:Z

    return-void

    :cond_2
    move v1, v5

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1
.end method

.method a(LW/k;)V
    .locals 0

    iput-object p1, p0, LL/j;->n:LW/k;

    return-void
.end method

.method a(LW/m;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LW/m;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LL/j;->m:LW/m;

    :cond_0
    return-void
.end method

.method a(Law/e;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LL/j;->q:Law/e;

    return-void
.end method

.method a(Lw/A;)V
    .locals 8

    iget-object v0, p0, LL/j;->b:LL/n;

    sget-object v1, LL/n;->a:LL/n;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LL/j;->u:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, LL/j;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, LL/j;->b:LL/n;

    sget-object v1, LL/n;->b:LL/n;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, LL/j;->e:Lw/A;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lw/A;->f()J

    move-result-wide v0

    iget-object v2, p0, LL/j;->e:Lw/A;

    invoke-interface {v2}, Lw/A;->f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2ee0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, LL/j;->f:Lw/A;

    if-eqz v0, :cond_4

    iget-object v0, p0, LL/j;->f:Lw/A;

    invoke-interface {v0}, Lw/A;->b()D

    move-result-wide v0

    iget-object v2, p0, LL/j;->f:Lw/A;

    invoke-interface {v2}, Lw/A;->c()D

    move-result-wide v2

    invoke-interface {p1}, Lw/A;->b()D

    move-result-wide v4

    invoke-interface {p1}, Lw/A;->c()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/k;->c(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_4

    iget v0, p0, LL/j;->h:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    :cond_4
    iput-object p1, p0, LL/j;->d:Lw/A;

    goto :goto_0
.end method

.method a(Z)V
    .locals 0

    return-void
.end method

.method b(I)V
    .locals 1

    iget-object v0, p0, LL/j;->m:LW/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, LL/j;->m:LW/m;

    invoke-virtual {v0, p1}, LW/m;->a(I)V

    :cond_0
    return-void
.end method

.method b(Z)V
    .locals 0

    return-void
.end method

.method b()Z
    .locals 2

    iget-object v0, p0, LL/j;->b:LL/n;

    sget-object v1, LL/n;->a:LL/n;

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

    iput-boolean p1, p0, LL/j;->r:Z

    return-void
.end method

.method c()Z
    .locals 1

    iget-boolean v0, p0, LL/j;->i:Z

    return v0
.end method
