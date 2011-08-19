.class Lh/eZ;
.super Ljava/lang/Object;

# interfaces
.implements Lh/R;


# instance fields
.field final synthetic a:Lh/dn;


# direct methods
.method constructor <init>(Lh/dn;)V
    .locals 0

    iput-object p1, p0, Lh/eZ;->a:Lh/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lh/eJ;)V
    .locals 8

    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->a(Lh/dn;)Lh/eY;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2a0

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    return-void
.end method

.method static synthetic a(Lh/eZ;)V
    .locals 0

    invoke-direct {p0}, Lh/eZ;->f()V

    return-void
.end method

.method static synthetic b(Lh/eZ;)V
    .locals 0

    invoke-direct {p0}, Lh/eZ;->g()V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->d(Lh/dn;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lh/dn;->a(Lh/dn;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v0

    invoke-virtual {v0}, Lh/fJ;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/fJ;->a(Z)V

    invoke-virtual {p0}, Lh/eZ;->d()V

    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->a(Lh/dn;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/S;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/S;->b()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    new-instance v0, Lcom/google/googlenav/bv;

    invoke-direct {v0}, Lcom/google/googlenav/bv;-><init>()V

    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v1

    invoke-virtual {v1}, Lh/fJ;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->g(Lh/dn;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/bv;->a:Law/e;

    :goto_0
    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->b(Lh/dn;)Lh/aB;

    move-result-object v1

    iget-object v2, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v2}, Lh/dn;->g(Lh/dn;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lh/aB;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/bv;)V

    return-void

    :cond_0
    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->g(Lh/dn;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/bv;->b:Law/e;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/dn;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/h;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/googlenav/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->c(Lh/dn;)Lh/eI;

    move-result-object v0

    new-instance v1, Lh/bj;

    invoke-direct {v1, p0, p1}, Lh/bj;-><init>(Lh/eZ;Lcom/google/googlenav/h;)V

    invoke-virtual {v0, p1, v1}, Lh/eI;->a(Lcom/google/googlenav/h;Lh/fM;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lh/dn;->a(Lcom/google/googlenav/h;Z)V

    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/dn;->a(Ljava/util/List;)V

    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->b(Lh/dn;)Lh/aB;

    move-result-object v0

    invoke-virtual {v0}, Lh/aB;->a()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    invoke-virtual {v0, p1}, Lh/dn;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->a(Lh/dn;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->E()Lo/bj;

    move-result-object v0

    invoke-virtual {v0}, Lo/bj;->l()Lo/I;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/I;->b(Z)V

    new-instance v0, Lcom/google/googlenav/bv;

    invoke-direct {v0}, Lcom/google/googlenav/bv;-><init>()V

    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->b(Lh/dn;)Lh/aB;

    move-result-object v1

    iget-object v2, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v2}, Lh/dn;->g(Lh/dn;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lh/aB;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/bv;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->a(Lh/dn;)Lh/eY;

    move-result-object v0

    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->d(Lh/dn;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lh/bk;

    invoke-direct {v2, p0}, Lh/bk;-><init>(Lh/eZ;)V

    invoke-virtual {v0, v1, v2}, Lh/eY;->a(Ljava/util/List;Lh/M;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lh/ew;

    invoke-direct {v0}, Lh/ew;-><init>()V

    if-eqz p1, :cond_0

    move-object v1, p1

    :goto_0
    iput-object v1, v0, Lh/ew;->a:Ljava/lang/String;

    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->h(Lh/dn;)Lcom/google/googlenav/ao;

    move-result-object v1

    iput-object v1, v0, Lh/ew;->b:Lcom/google/googlenav/ao;

    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->i(Lh/dn;)Lcom/google/googlenav/ui/bu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v1

    iput-object v1, v0, Lh/ew;->c:Lf/h;

    new-instance v1, Lh/bn;

    invoke-direct {v1, p0}, Lh/bn;-><init>(Lh/eZ;)V

    iput-object v1, v0, Lh/ew;->d:Lh/i;

    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->a(Lh/dn;)Lh/eY;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh/eY;->a(Lh/ew;)V

    return-void

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lo/av;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/ao;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->e(Lh/dn;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lh/bl;

    invoke-static {}, Lo/ao;->l()Lo/ao;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lh/bl;-><init>(Lh/eZ;Lo/aN;)V

    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->a(Lh/dn;)Lh/eY;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/cr;->a(Lh/eY;)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v0

    invoke-virtual {v0}, Lh/fJ;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->d(Lh/dn;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lh/dn;->a(Lh/dn;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lh/bm;

    invoke-direct {v0, p0}, Lh/bm;-><init>(Lh/eZ;)V

    invoke-direct {p0, v0}, Lh/eZ;->a(Lh/eJ;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lh/eZ;->g()V

    goto :goto_0
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->a(Lh/dn;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x8f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    new-instance v0, Lcom/google/googlenav/bv;

    invoke-direct {v0}, Lcom/google/googlenav/bv;-><init>()V

    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v1

    invoke-virtual {v1}, Lh/fJ;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->g(Lh/dn;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/bv;->d:Law/e;

    :goto_0
    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->b(Lh/dn;)Lh/aB;

    move-result-object v1

    iget-object v2, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v2}, Lh/dn;->g(Lh/dn;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lh/aB;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/bv;)V

    return-void

    :cond_0
    iget-object v1, p0, Lh/eZ;->a:Lh/dn;

    invoke-static {v1}, Lh/dn;->g(Lh/dn;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/bv;->c:Law/e;

    goto :goto_0
.end method
