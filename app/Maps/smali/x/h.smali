.class public abstract Lx/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lx/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lx/h;
    .locals 1

    sget-object v0, Lx/h;->a:Lx/h;

    return-object v0
.end method

.method public static a(Lx/h;)V
    .locals 0

    sput-object p0, Lx/h;->a:Lx/h;

    return-void
.end method


# virtual methods
.method public abstract a(ILx/U;Ljava/lang/String;)Lx/S;
.end method

.method public a(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/U;Z)Lx/S;
    .locals 3

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/i;->a([Lcom/google/googlenav/ui/aI;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p2, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v2}, Lcom/google/googlenav/ui/i;->a([Lcom/google/googlenav/ui/aI;)Ljava/util/Vector;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    iget v1, p1, Lcom/google/googlenav/ui/bx;->k:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(I)Lcom/google/googlenav/ui/aQ;

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->o:Lcom/google/googlenav/ui/bi;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->m:Lcom/google/googlenav/ui/bi;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    iget v1, p1, Lcom/google/googlenav/ui/bx;->r:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/aQ;

    iget v1, p1, Lcom/google/googlenav/ui/bx;->u:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->e(I)Lcom/google/googlenav/ui/aQ;

    iget-boolean v1, p1, Lcom/google/googlenav/ui/bx;->v:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bx;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bx;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bx;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bx;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bx;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->g(I)Lcom/google/googlenav/ui/aQ;

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lx/h;->a(Lcom/google/googlenav/ui/bx;Lx/U;Z)Lx/S;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lcom/google/googlenav/ui/bx;Lx/U;)Lx/S;
.end method

.method public abstract a(Lcom/google/googlenav/ui/bx;Lx/U;Z)Lx/S;
.end method

.method public a(Lcom/google/googlenav/ui/bx;Lx/U;ZLf/h;)Lx/S;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lu/v;Lcom/google/googlenav/ui/aY;Z)Lx/S;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(II)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aI;)V
    .locals 0

    return-void
.end method

.method public a([Lcom/google/googlenav/ui/aI;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method

.method public abstract g()V
.end method
