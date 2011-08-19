.class Lo/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lh/ef;


# instance fields
.field final synthetic a:Lo/i;

.field final synthetic b:Lo/o;

.field final synthetic c:Lo/cg;


# direct methods
.method constructor <init>(Lo/cg;Lo/i;Lo/o;)V
    .locals 0

    iput-object p1, p0, Lo/ae;->c:Lo/cg;

    iput-object p2, p0, Lo/ae;->a:Lo/i;

    iput-object p3, p0, Lo/ae;->b:Lo/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lo/ae;->c:Lo/cg;

    invoke-static {v0}, Lo/cg;->c(Lo/cg;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0x35

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lo/ae;->a:Lo/i;

    iget-object v1, p0, Lo/ae;->b:Lo/o;

    invoke-virtual {v1}, Lo/o;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/i;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lo/ae;->c:Lo/cg;

    invoke-static {v0}, Lo/cg;->a(Lo/cg;)Li/C;

    move-result-object v0

    invoke-virtual {v0}, Li/C;->D()Lc/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/k;->b()V

    iget-object v0, p0, Lo/ae;->c:Lo/cg;

    invoke-static {v0}, Lo/cg;->a(Lo/cg;)Li/C;

    move-result-object v0

    invoke-virtual {v0}, Li/C;->Z_()V

    iget-object v0, p0, Lo/ae;->c:Lo/cg;

    invoke-static {v0}, Lo/cg;->d(Lo/cg;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->d()V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lo/bb;

    iget-object v2, p0, Lo/ae;->b:Lo/o;

    invoke-direct {v1, p0, v2}, Lo/bb;-><init>(Lo/ae;Lo/o;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    iget-object v0, p0, Lo/ae;->c:Lo/cg;

    invoke-static {v0}, Lo/cg;->b(Lo/cg;)Lc/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/s;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lo/ae;->c:Lo/cg;

    invoke-static {v0}, Lo/cg;->b(Lo/cg;)Lc/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/s;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lo/ae;->c:Lo/cg;

    invoke-static {v0}, Lo/cg;->b(Lo/cg;)Lc/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/s;->a(Z)V

    return-void
.end method
