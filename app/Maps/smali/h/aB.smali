.class public Lh/aB;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lh/k;

.field private final b:Li/br;

.field private final c:LaU/a;

.field private d:Lh/bd;


# direct methods
.method public constructor <init>(Lo/bj;Li/br;LaU/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh/k;

    invoke-direct {v0, p1, p3}, Lh/k;-><init>(Lo/bj;LaU/a;)V

    iput-object v0, p0, Lh/aB;->a:Lh/k;

    iput-object p2, p0, Lh/aB;->b:Li/br;

    iput-object p3, p0, Lh/aB;->c:LaU/a;

    return-void
.end method

.method static synthetic a(Lh/aB;)Lh/bd;
    .locals 1

    iget-object v0, p0, Lh/aB;->d:Lh/bd;

    return-object v0
.end method

.method static synthetic b(Lh/aB;)LaU/a;
    .locals 1

    iget-object v0, p0, Lh/aB;->c:LaU/a;

    return-object v0
.end method

.method static synthetic c(Lh/aB;)Li/br;
    .locals 1

    iget-object v0, p0, Lh/aB;->b:Li/br;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lh/aB;->a:Lh/k;

    invoke-virtual {v0}, Lh/k;->a()V

    return-void
.end method

.method public a(II)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lf/h;

    invoke-direct {v0, p1, p2}, Lf/h;-><init>(II)V

    new-instance v1, Lcom/google/googlenav/R;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v3, v3, v2}, Lcom/google/googlenav/R;-><init>(Lf/h;III)V

    new-instance v0, Lh/ea;

    invoke-direct {v0, p0}, Lh/ea;-><init>(Lh/aB;)V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/R;->a(Lcom/google/googlenav/N;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public a(LH/d;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "cz"

    invoke-static {v0}, Lo/A;->c(Ljava/lang/String;)Law/e;

    move-result-object v0

    new-instance v1, Lo/bV;

    invoke-direct {v1}, Lo/bV;-><init>()V

    invoke-virtual {p1}, LH/d;->c()Lf/h;

    move-result-object v2

    invoke-virtual {v2}, Lf/h;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/bV;->a(I)Lo/bV;

    move-result-object v1

    invoke-virtual {p1}, LH/d;->c()Lf/h;

    move-result-object v2

    invoke-virtual {v2}, Lf/h;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/bV;->b(I)Lo/bV;

    move-result-object v1

    invoke-virtual {v1, p2}, Lo/bV;->a(Ljava/lang/String;)Lo/bV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/bV;->a(Law/e;)Lo/bV;

    move-result-object v1

    new-instance v2, Lh/V;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lh/V;-><init>(Lh/aB;Lh/ea;)V

    invoke-virtual {v1, v2}, Lo/bV;->a(Lo/cd;)Lo/bV;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lo/bV;->f(I)Lo/bV;

    move-result-object v1

    invoke-virtual {v1, v4}, Lo/bV;->a(Z)Lo/bV;

    move-result-object v1

    invoke-virtual {v1, v5}, Lo/bV;->b(Z)Lo/bV;

    move-result-object v1

    invoke-virtual {v1, v5}, Lo/bV;->d(Z)Lo/bV;

    move-result-object v1

    invoke-virtual {v1, v4}, Lo/bV;->g(I)Lo/bV;

    move-result-object v1

    invoke-virtual {p1}, LH/d;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, LH/d;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/bV;->e(I)Lo/bV;

    :cond_0
    invoke-static {v0}, LaC/a;->a(Law/e;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v1}, Lo/bV;->a()Lo/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/h;Lcom/google/googlenav/bv;)V
    .locals 1

    iget-object v0, p0, Lh/aB;->a:Lh/k;

    invoke-virtual {v0, p1, p2}, Lh/k;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/bv;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    new-instance v0, Lcom/google/googlenav/au;

    new-instance v1, Lh/bW;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lh/bW;-><init>(Lh/aB;Lh/ea;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/googlenav/au;-><init>(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;Lcom/google/googlenav/ae;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public a(Lh/bd;Lh/at;)V
    .locals 1

    iput-object p1, p0, Lh/aB;->d:Lh/bd;

    iget-object v0, p0, Lh/aB;->a:Lh/k;

    invoke-virtual {v0, p2}, Lh/k;->a(Lh/at;)V

    return-void
.end method
