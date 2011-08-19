.class Lh/by;
.super Ljava/lang/Object;

# interfaces
.implements Lh/at;
.implements Lh/bd;


# instance fields
.field final synthetic a:Lh/dn;


# direct methods
.method private constructor <init>(Lh/dn;)V
    .locals 0

    iput-object p1, p0, Lh/by;->a:Lh/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lh/dn;Lh/bb;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/by;-><init>(Lh/dn;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ao;)V
    .locals 2

    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ao;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/fJ;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-static {v0, p1}, Lh/dn;->a(Lh/dn;Lcom/google/googlenav/ao;)Lcom/google/googlenav/ao;

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh/fJ;->a(Ljava/util/List;)V

    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v0

    invoke-virtual {v0}, Lh/fJ;->f()V

    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v0

    invoke-virtual {v0}, Lh/fJ;->d()V

    :cond_0
    return-void
.end method

.method public a(Lo/I;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->g(Lh/dn;)Lcom/google/googlenav/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/I;->a(Law/e;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo/I;->b(Law/e;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/h;->a(ZZ)V

    invoke-virtual {p1}, Lo/I;->f()Law/e;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/googlenav/h;->i()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lo/d;->a(Law/e;)Ljava/util/List;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lh/by;->a:Lh/dn;

    invoke-static {v2}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lh/by;->a:Lh/dn;

    invoke-static {v2}, Lh/dn;->g(Lh/dn;)Lcom/google/googlenav/h;

    move-result-object v2

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lh/by;->a:Lh/dn;

    if-eqz p1, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v2, v0, v3}, Lh/dn;->a(Lcom/google/googlenav/h;Z)V

    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-virtual {v0, v1}, Lh/dn;->a(Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    new-array v1, v4, [Lo/d;

    invoke-static {}, Lo/d;->h()Lo/d;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lj/X;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1
.end method

.method public a(ZLcom/google/googlenav/bG;)V
    .locals 3

    const/16 v1, 0x99

    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v0

    invoke-virtual {v0}, Lh/fJ;->f()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->g(Lh/dn;)Lcom/google/googlenav/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->e(Law/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->a(Lh/dn;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/bB;->b(Law/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/google/googlenav/bv;

    invoke-direct {v0}, Lcom/google/googlenav/bv;-><init>()V

    iget-object v1, p0, Lh/by;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->d(Lh/dn;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/E;->a(Ljava/util/List;)Lcom/google/googlenav/E;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/E;->a()Law/e;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/bv;->e:Law/e;

    iget-object v1, p0, Lh/by;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->b(Lh/dn;)Lh/aB;

    move-result-object v1

    iget-object v2, p0, Lh/by;->a:Lh/dn;

    invoke-static {v2}, Lh/dn;->g(Lh/dn;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lh/aB;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/bv;)V

    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->j(Lh/dn;)Lh/dV;

    move-result-object v0

    invoke-interface {v0}, Lh/dV;->a()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh/by;->a:Lh/dn;

    invoke-static {v2}, Lh/dn;->g(Lh/dn;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/bB;->b(Law/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lh/dn;->a(Lh/dn;Lcom/google/googlenav/bG;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lh/by;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->a(Lh/dn;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    goto :goto_1
.end method
