.class abstract LL/l;
.super Ljava/lang/Object;


# instance fields
.field final u:Lw/l;

.field final v:Lal/b;

.field final w:LL/i;

.field final x:LL/c;


# direct methods
.method public constructor <init>(Lw/l;Lal/b;LL/i;LL/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL/l;->u:Lw/l;

    iput-object p2, p0, LL/l;->v:Lal/b;

    iput-object p3, p0, LL/l;->w:LL/i;

    iput-object p4, p0, LL/l;->x:LL/c;

    return-void
.end method

.method private a(Lw/A;JZ)Law/e;
    .locals 7

    const/4 v6, 0x1

    const-wide v4, 0x416312d000000000L

    new-instance v0, Law/e;

    sget-object v1, Lbd/a;->q:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-interface {p1}, Lw/A;->b()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {v0, v6, v1}, Law/e;->h(II)V

    const/4 v1, 0x2

    invoke-interface {p1}, Lw/A;->c()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    new-instance v1, Law/e;

    sget-object v2, Lbd/a;->B:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v6, v0}, Law/e;->b(ILaw/e;)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Law/e;->h(II)V

    const/4 v0, 0x6

    invoke-interface {p1}, Lw/A;->h()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Law/e;->b(IJ)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0, p4}, Law/e;->b(IZ)V

    const/4 v0, 0x3

    invoke-interface {p1}, Lw/A;->a()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Law/e;->h(II)V

    invoke-interface {p1}, Lw/A;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-interface {p1}, Lw/A;->e()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Law/e;->a(IF)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected a(II)F
    .locals 2

    if-lez p1, :cond_0

    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x4080

    goto :goto_0
.end method

.method protected a(Lw/A;LW/m;LW/k;ZI)Law/e;
    .locals 4

    invoke-virtual/range {p0 .. p5}, LL/l;->b(Lw/A;LW/m;LW/k;ZI)Law/e;

    move-result-object v0

    new-instance v1, Law/e;

    sget-object v2, Lbd/a;->Y:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Law/e;->a(ILaw/e;)V

    iget-object v0, p0, LL/l;->w:LL/i;

    iget-object v2, p0, LL/l;->u:Lw/l;

    iget-object v3, p0, LL/l;->v:Lal/b;

    invoke-virtual {v0, v2, v3, v1}, LL/i;->a(Lw/l;Lal/b;Law/e;)V

    return-object v1
.end method

.method abstract a()V
.end method

.method abstract a(I)V
.end method

.method abstract a(IIZ)V
.end method

.method abstract a(LW/k;)V
.end method

.method abstract a(LW/m;)V
.end method

.method abstract a(Law/e;)V
.end method

.method abstract a(Lw/A;)V
.end method

.method abstract a(Z)V
.end method

.method protected a(LW/k;Lw/A;)Z
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    return v0

    :cond_1
    iget-wide v0, p1, LW/k;->a:J

    invoke-interface {p2}, Lw/A;->f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xafc80

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method protected a(Law/e;LW/m;)Z
    .locals 1

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2, p1}, LW/m;->a(Law/e;)Z

    move-result v0

    goto :goto_0
.end method

.method protected a(Lw/A;Lw/A;I)Z
    .locals 8

    invoke-interface {p1}, Lw/A;->b()D

    move-result-wide v0

    invoke-interface {p1}, Lw/A;->c()D

    move-result-wide v2

    invoke-interface {p2}, Lw/A;->b()D

    move-result-wide v4

    invoke-interface {p2}, Lw/A;->c()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/k;->c(DDDD)D

    move-result-wide v0

    int-to-double v2, p3

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lw/A;LW/m;LW/k;ZI)Law/e;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Law/e;

    sget-object v1, Lbd/a;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, LL/l;->u:Lw/l;

    invoke-interface {v1}, Lw/l;->d()J

    move-result-wide v1

    if-eqz p1, :cond_0

    const/4 v3, 0x3

    invoke-direct {p0, p1, v1, v2, p4}, LL/l;->a(Lw/A;JZ)Law/e;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Law/e;->b(ILaw/e;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2, v1, v2}, LW/a;->a(LW/m;J)Law/e;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Law/e;->b(ILaw/e;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3, v1, v2}, LW/k;->a(J)Law/e;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    :cond_2
    new-instance v1, Law/e;

    sget-object v2, Lbd/a;->D:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v5, p5}, Law/e;->h(II)V

    const/16 v2, 0x63

    invoke-virtual {v0, v2, v1}, Law/e;->a(ILaw/e;)V

    return-object v0
.end method

.method abstract b(I)V
.end method

.method abstract b(Z)V
.end method

.method abstract b()Z
.end method

.method abstract c(Z)V
.end method
