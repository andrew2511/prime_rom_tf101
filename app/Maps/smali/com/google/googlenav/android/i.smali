.class public Lcom/google/googlenav/android/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/l;


# instance fields
.field private a:Lcom/google/googlenav/android/n;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()Lcom/google/android/maps/driveabout/vector/bD;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->g()Lf/v;

    move-result-object p0

    instance-of v0, p0, LaK/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast p0, LaK/j;

    invoke-virtual {p0}, LaK/j;->w()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->m()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(FZZ)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/android/i;->c()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/bD;->f()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v0

    if-nez p2, :cond_1

    move v3, v1

    :goto_1
    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v0

    invoke-virtual {v0}, LH/f;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v0

    invoke-virtual {v0}, LH/f;->e()I

    move-result v0

    int-to-float v0, v0

    move v4, v0

    :goto_2
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v2

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    if-eqz p3, :cond_2

    const/16 v1, 0x190

    :goto_3
    invoke-virtual {v6, v0, v1}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/cm;I)V

    goto :goto_0

    :cond_1
    cmpl-float v1, v0, v1

    if-nez v1, :cond_4

    const/high16 v0, 0x4248

    move v3, v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    move v4, p1

    goto :goto_2

    :cond_4
    move v3, v0

    goto :goto_1
.end method

.method public a(Lcom/google/googlenav/android/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/i;->a:Lcom/google/googlenav/android/n;

    return-void
.end method

.method public a(Lf/a;)V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->h()Lf/Y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/Y;->a(Lf/a;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/android/i;->b(Z)I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/android/i;->b:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v0, p0, Lcom/google/googlenav/android/i;->b:I

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    const/16 v1, 0xf

    iget v2, p0, Lcom/google/googlenav/android/i;->b:I

    invoke-virtual {v0, v1, v2}, Lx/h;->a(II)V

    iget-object v0, p0, Lcom/google/googlenav/android/i;->a:Lcom/google/googlenav/android/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/i;->a:Lcom/google/googlenav/android/n;

    invoke-interface {v0}, Lcom/google/googlenav/android/n;->m()V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/w;->g()Lf/v;

    move-result-object p0

    instance-of v1, p0, LaK/j;

    if-eqz v1, :cond_0

    check-cast p0, LaK/j;

    invoke-virtual {p0}, LaK/j;->w()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->h()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public b(Z)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/android/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/android/i;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->o()Z

    move-result v0

    return v0
.end method
