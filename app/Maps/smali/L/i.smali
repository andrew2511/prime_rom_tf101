.class public LL/i;
.super Ljava/lang/Object;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LL/i;->a:J

    return-void
.end method

.method private a(JJLal/b;)Law/e;
    .locals 6

    const-wide/16 v4, 0x3e8

    new-instance v0, Law/e;

    sget-object v1, Lbd/a;->m:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    div-long v2, p3, v4

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    const/4 v1, 0x2

    iget-wide v2, p0, LL/i;->a:J

    sub-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x3

    iget-object v2, p5, Lal/b;->c:Lal/a;

    invoke-virtual {v2}, Lal/a;->b()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    const/4 v1, 0x4

    iget-object v2, p5, Lal/b;->d:Lal/a;

    invoke-virtual {v2}, Lal/a;->b()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    return-object v0
.end method


# virtual methods
.method public a(JLal/b;)V
    .locals 1

    iget-object v0, p3, Lal/b;->c:Lal/a;

    invoke-virtual {v0}, Lal/a;->b()Law/e;

    iget-object v0, p3, Lal/b;->d:Lal/a;

    invoke-virtual {v0}, Lal/a;->b()Law/e;

    iput-wide p1, p0, LL/i;->a:J

    return-void
.end method

.method public a(Lw/l;Lal/b;Law/e;)V
    .locals 7

    invoke-interface {p1}, Lw/l;->b()J

    move-result-wide v1

    iget-wide v3, p0, LL/i;->a:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    invoke-virtual {p0, v1, v2, p2}, LL/i;->a(JLal/b;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v3, p0, LL/i;->a:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0x6ddd00

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    const/4 v6, 0x5

    invoke-interface {p1}, Lw/l;->c()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LL/i;->a(JJLal/b;)Law/e;

    move-result-object v0

    invoke-virtual {p3, v6, v0}, Law/e;->a(ILaw/e;)V

    iput-wide v1, p0, LL/i;->a:J

    goto :goto_0
.end method
