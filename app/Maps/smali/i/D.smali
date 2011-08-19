.class Li/D;
.super Ljava/lang/Object;

# interfaces
.implements LH/o;


# instance fields
.field final synthetic a:Li/C;

.field private b:Lf/h;

.field private c:J

.field private d:J

.field private e:LG/Z;


# direct methods
.method private constructor <init>(Li/C;)V
    .locals 0

    iput-object p1, p0, Li/D;->a:Li/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Li/C;Li/aq;)V
    .locals 0

    invoke-direct {p0, p1}, Li/D;-><init>(Li/C;)V

    return-void
.end method

.method static synthetic a(Li/D;J)J
    .locals 0

    iput-wide p1, p0, Li/D;->c:J

    return-wide p1
.end method

.method static synthetic a(Li/D;LG/Z;)LG/Z;
    .locals 0

    iput-object p1, p0, Li/D;->e:LG/Z;

    return-object p1
.end method

.method static synthetic a(Li/D;Lf/h;)Lf/h;
    .locals 0

    iput-object p1, p0, Li/D;->b:Lf/h;

    return-object p1
.end method

.method private a(JJJ)Z
    .locals 4

    const-wide/32 v2, 0x927c0

    sub-long v0, p3, p1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sub-long v0, p3, p5

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Li/D;J)J
    .locals 0

    iput-wide p1, p0, Li/D;->d:J

    return-wide p1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Li/D;->a:Li/C;

    invoke-virtual {v0}, Li/C;->B()Lo/aH;

    move-result-object v0

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Li/D;->a(Lo/U;)Z

    iget-object v0, p0, Li/D;->a:Li/C;

    invoke-virtual {v0}, Li/C;->B()Lo/aH;

    move-result-object v0

    invoke-virtual {v0}, Lo/aH;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Li/D;->a:Li/C;

    invoke-virtual {v0}, Li/C;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/D;->a:Li/C;

    invoke-virtual {v0}, Li/C;->aI()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Li/D;->a:Li/C;

    iget-object v0, v0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Li/D;->a:Li/C;

    invoke-static {v0}, Li/C;->h(Li/C;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/D;->a:Li/C;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Li/C;->a(Li/C;Z)V

    :cond_1
    iget-object v0, p0, Li/D;->a:Li/C;

    invoke-virtual {v0}, Li/C;->aj()V

    :cond_2
    return-void
.end method

.method public a(ILH/f;)V
    .locals 0

    return-void
.end method

.method public a(Lf/h;ILG/Z;)V
    .locals 2

    iget-object v0, p0, Li/D;->a:Li/C;

    invoke-static {v0}, Li/C;->d(Li/C;)LaU/a;

    move-result-object v0

    new-instance v1, Li/O;

    invoke-direct {v1, p0, p1, p2, p3}, Li/O;-><init>(Li/D;Lf/h;ILG/Z;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lf/h;LH/f;)V
    .locals 3

    invoke-virtual {p2}, LH/f;->p()Lf/h;

    move-result-object v0

    invoke-virtual {p2}, LH/f;->h()I

    move-result v1

    invoke-virtual {p2}, LH/f;->A()LG/Z;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Li/D;->a(Lf/h;ILG/Z;)V

    return-void
.end method

.method public a(Lo/U;)Z
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Li/D;->b:Lf/h;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lo/U;->s()J

    move-result-wide v1

    iget-wide v3, p0, Li/D;->d:J

    iget-object v0, p0, Li/D;->a:Li/C;

    invoke-virtual {v0}, Li/C;->br()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Li/D;->a(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/U;->v()V

    iget-object v0, p0, Li/D;->a:Li/C;

    invoke-static {v0}, Li/C;->b(Li/C;)Lo/by;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lo/by;->a(Lcom/google/googlenav/a;J)V

    :cond_0
    invoke-virtual {p1}, Lo/U;->d()Lf/h;

    move-result-object v0

    iget-object v1, p0, Li/D;->b:Lf/h;

    invoke-virtual {p1, v1}, Lo/U;->a(Lf/N;)V

    iget-object v1, p0, Li/D;->e:LG/Z;

    invoke-virtual {p1, v1}, Lo/U;->a(LG/Z;)V

    iget-wide v1, p0, Li/D;->c:J

    invoke-virtual {p1, v1, v2}, Lo/U;->c(J)V

    iget-wide v1, p0, Li/D;->d:J

    invoke-virtual {p1, v1, v2}, Lo/U;->a(J)V

    invoke-virtual {p1}, Lo/U;->d()Lf/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Li/D;->a:Li/C;

    invoke-static {v0, v7}, Li/C;->b(Li/C;Z)Z

    :cond_1
    move v0, v7

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
