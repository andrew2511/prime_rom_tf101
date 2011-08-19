.class Lo/aO;
.super Lo/B;


# instance fields
.field final synthetic a:Lo/cg;


# direct methods
.method constructor <init>(Lo/cg;)V
    .locals 0

    iput-object p1, p0, Lo/aO;->a:Lo/cg;

    invoke-direct {p0}, Lo/B;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lo/aO;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->c(Lo/cg;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0x11e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lo/aO;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->g(Lo/cg;)LaU/a;

    move-result-object v0

    new-instance v1, Lo/bD;

    invoke-direct {v1, p0}, Lo/bD;-><init>(Lo/aO;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a([B)V
    .locals 2

    iget-object v0, p0, Lo/aO;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->c(Lo/cg;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0x18e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lo/aO;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->d(Lo/cg;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->D()LaD/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aO;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->d(Lo/cg;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->D()LaD/r;

    move-result-object v0

    invoke-virtual {v0}, LaD/r;->a()V

    :cond_0
    iget-object v0, p0, Lo/aO;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->g(Lo/cg;)LaU/a;

    move-result-object v0

    new-instance v1, Lo/bC;

    invoke-direct {v1, p0}, Lo/bC;-><init>(Lo/aO;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
