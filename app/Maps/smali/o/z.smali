.class Lo/z;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eT;


# instance fields
.field final synthetic a:Lo/bG;


# direct methods
.method constructor <init>(Lo/bG;)V
    .locals 0

    iput-object p1, p0, Lo/z;->a:Lo/bG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    iget-object v1, p0, Lo/z;->a:Lo/bG;

    iget-object v1, v1, Lo/bG;->c:Lo/aN;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->a(Lcom/google/googlenav/login/h;)V

    iget-object v0, p0, Lo/z;->a:Lo/bG;

    iget-object v0, v0, Lo/bG;->a:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    return-void
.end method

.method public a(I)V
    .locals 7

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v6

    new-instance v0, Lo/aL;

    const/4 v1, 0x1

    const/4 v3, 0x3

    new-instance v4, Lo/aW;

    iget-object v2, p0, Lo/z;->a:Lo/bG;

    iget-object v2, v2, Lo/bG;->c:Lo/aN;

    invoke-direct {v4, v2}, Lo/aW;-><init>(Lo/aN;)V

    new-instance v5, Lo/p;

    iget-object v2, p0, Lo/z;->a:Lo/bG;

    iget-object v2, v2, Lo/bG;->c:Lo/aN;

    invoke-direct {v5, v2}, Lo/p;-><init>(Lo/aN;)V

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lo/aL;-><init>(ZIILo/aE;Lo/aA;)V

    invoke-virtual {v6, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    iget-object v1, p0, Lo/z;->a:Lo/bG;

    iget-object v1, v1, Lo/bG;->c:Lo/aN;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->a(Lcom/google/googlenav/login/h;)V

    iget-object v0, p0, Lo/z;->a:Lo/bG;

    iget-object v0, v0, Lo/bG;->a:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    return-void
.end method
