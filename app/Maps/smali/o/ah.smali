.class Lo/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eJ;


# instance fields
.field final synthetic a:Lo/cg;


# direct methods
.method constructor <init>(Lo/cg;)V
    .locals 0

    iput-object p1, p0, Lo/ah;->a:Lo/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    invoke-static {}, Li/i;->c()V

    new-instance v0, Lo/Q;

    invoke-direct {v0, p0}, Lo/Q;-><init>(Lo/ah;)V

    invoke-static {v0}, LaR/d;->a(LaR/e;)V

    iget-object v0, p0, Lo/ah;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->b(Lo/cg;)Lc/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/s;->a(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    invoke-static {}, Li/i;->d()V

    const/4 v0, 0x1

    iget-object v1, p0, Lo/ah;->a:Lo/cg;

    invoke-static {v1}, Lo/cg;->b(Lo/cg;)Lc/s;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0}, Lc/s;->a(Ljava/lang/Boolean;Z)V

    iget-object v0, p0, Lo/ah;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->b(Lo/cg;)Lc/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/s;->a(Z)V

    iget-object v0, p0, Lo/ah;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->a(Lo/cg;)Li/C;

    move-result-object v0

    invoke-virtual {v0}, Li/C;->M()V

    return-void
.end method

.method public c(Z)V
    .locals 2

    invoke-static {}, Li/i;->e()V

    iget-object v0, p0, Lo/ah;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->b(Lo/cg;)Lc/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/s;->a(Z)V

    return-void
.end method
