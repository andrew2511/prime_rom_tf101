.class Lo/aQ;
.super Ljava/lang/Object;

# interfaces
.implements Lh/cE;


# instance fields
.field final synthetic a:Lo/cg;


# direct methods
.method constructor <init>(Lo/cg;)V
    .locals 0

    iput-object p1, p0, Lo/aQ;->a:Lo/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lo/aQ;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->h(Lo/cg;)Lo/by;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lo/by;->a(Lcom/google/googlenav/a;J)V

    iget-object v0, p0, Lo/aQ;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->b(Lo/cg;)Lc/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/s;->a(Z)V

    return-void
.end method

.method public a(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/aQ;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->h(Lo/cg;)Lo/by;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lo/by;->a(Lcom/google/googlenav/a;J)V

    :cond_1
    iget-object v0, p0, Lo/aQ;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->b(Lo/cg;)Lc/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/s;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lo/aQ;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->b(Lo/cg;)Lc/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/s;->a(Z)V

    iget-object v0, p0, Lo/aQ;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->a(Lo/cg;)Li/C;

    move-result-object v0

    invoke-virtual {v0}, Li/C;->Z_()V

    return-void
.end method
