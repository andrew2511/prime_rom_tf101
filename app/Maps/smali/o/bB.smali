.class public Lo/bB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/k;


# instance fields
.field private a:Lak/d;

.field private b:Z

.field private c:Lh/eY;

.field private d:Lo/aN;


# direct methods
.method public constructor <init>(Lh/eY;Lo/aN;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/bB;->b:Z

    iput-object p1, p0, Lo/bB;->c:Lh/eY;

    iput-object p2, p0, Lo/bB;->d:Lo/aN;

    iget-object v0, p0, Lo/bB;->d:Lo/aN;

    invoke-virtual {v0, p0}, Lo/aN;->a(Lcom/google/googlenav/login/k;)V

    return-void
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lo/bB;->a:Lak/d;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/bB;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/bB;->c:Lh/eY;

    const/16 v1, 0x198

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    :cond_0
    iget-object v0, p0, Lo/bB;->a:Lak/d;

    instance-of v0, v0, Lcom/google/googlenav/au;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/bB;->d:Lo/aN;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/bB;->a:Lak/d;

    check-cast v0, Lcom/google/googlenav/au;

    iget-object v1, p0, Lo/bB;->d:Lo/aN;

    invoke-virtual {v1}, Lo/aN;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/au;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    iget-object v1, p0, Lo/bB;->a:Lak/d;

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    iget-object v0, p0, Lo/bB;->a:Lak/d;

    instance-of v0, v0, Lcom/google/googlenav/au;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lo/bB;->a:Lak/d;

    check-cast p0, Lcom/google/googlenav/au;

    invoke-virtual {p0}, Lcom/google/googlenav/au;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v1

    invoke-virtual {v1}, LH/f;->d()Law/e;

    move-result-object v2

    invoke-static {v2}, LH/a;->a(Law/e;)LH/m;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, LH/a;->a(LH/f;LH/m;LT/c;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public R_()V
    .locals 0

    invoke-direct {p0}, Lo/bB;->a()V

    return-void
.end method

.method public S_()V
    .locals 0

    return-void
.end method

.method public a(Lak/m;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lo/bB;->a(Lak/m;Z)V

    return-void
.end method

.method public a(Lak/m;Z)V
    .locals 2

    iput-object p1, p0, Lo/bB;->a:Lak/d;

    iput-boolean p2, p0, Lo/bB;->b:Z

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/bB;->d:Lo/aN;

    invoke-virtual {v0}, Lo/aN;->t()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lo/bB;->c:Lh/eY;

    const/16 v1, 0x195

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/eY;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lo/bB;->d:Lo/aN;

    invoke-virtual {v0}, Lo/aN;->R_()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lo/bB;->d:Lo/aN;

    invoke-virtual {v0}, Lo/aN;->b()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lo/bB;->a()V

    goto :goto_0
.end method

.method public an_()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lo/bB;->a:Lak/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/bB;->b:Z

    return-void
.end method

.method public ao_()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lo/bB;->a:Lak/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/bB;->b:Z

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
