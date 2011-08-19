.class public Li/af;
.super Li/H;

# interfaces
.implements Li/be;


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 1

    invoke-direct {p0, p1}, Li/H;-><init>(Li/x;)V

    const/4 v0, -0x1

    iput v0, p0, Li/af;->c:I

    return-void
.end method

.method private c()Lx/B;
    .locals 1

    invoke-direct {p0}, Li/af;->e()Lu/d;

    move-result-object v0

    invoke-static {v0}, Li/bp;->a(Lu/d;)Lcom/google/googlenav/ui/g;

    move-result-object v0

    invoke-static {v0}, Lx/B;->a(Lcom/google/googlenav/ui/g;)Lx/B;

    move-result-object v0

    return-object v0
.end method

.method private d()Lu/v;
    .locals 1

    iget-object v0, p0, Li/af;->a:Li/x;

    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object p0

    check-cast p0, Lu/v;

    return-object p0
.end method

.method private e()Lu/d;
    .locals 1

    iget-object v0, p0, Li/af;->a:Li/x;

    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object p0

    check-cast p0, Lu/d;

    return-object p0
.end method

.method private f()I
    .locals 2

    iget v0, p0, Li/af;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Li/af;->d()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->az()I

    move-result v0

    iput v0, p0, Li/af;->c:I

    :cond_0
    iget v0, p0, Li/af;->c:I

    return v0
.end method


# virtual methods
.method public a()Lx/S;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Li/af;->a:Li/x;

    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v2

    invoke-direct {p0}, Li/af;->d()Lu/v;

    move-result-object v1

    invoke-direct {p0}, Li/af;->f()I

    move-result v3

    invoke-static {v1, v3, v0, v4, v5}, Li/bp;->a(Lu/v;IIZZ)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bx;

    iget-object v1, p0, Li/af;->a:Li/x;

    invoke-virtual {v2, v0, v1, v4}, Lx/h;->a(Lcom/google/googlenav/ui/bx;Lx/U;Z)Lx/S;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bx;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/bx;

    iget-object v3, p0, Li/af;->a:Li/x;

    invoke-virtual {v2, v0, v1, v3, v4}, Lx/h;->a(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/U;Z)Lx/S;

    move-result-object v0

    goto :goto_0
.end method

.method public al_()Lx/J;
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Li/af;->c:I

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-direct {p0}, Li/af;->c()Lx/B;

    move-result-object v1

    iget-object v2, p0, Li/af;->a:Li/x;

    invoke-virtual {v0, v1, v2}, Lx/k;->d(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0
.end method
