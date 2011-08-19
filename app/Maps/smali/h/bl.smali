.class Lh/bl;
.super Lh/cr;


# instance fields
.field final synthetic a:Lh/eZ;


# direct methods
.method constructor <init>(Lh/eZ;Lo/aN;)V
    .locals 0

    iput-object p1, p0, Lh/bl;->a:Lh/eZ;

    invoke-direct {p0, p2}, Lh/cr;-><init>(Lo/aN;)V

    return-void
.end method


# virtual methods
.method public R_()V
    .locals 1

    invoke-super {p0}, Lh/cr;->R_()V

    invoke-static {}, Lo/av;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/ao;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/bl;->a:Lh/eZ;

    iget-object v0, v0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->a(Lh/dn;)Lh/eY;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/bl;->a(Lh/eY;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/bl;->a:Lh/eZ;

    iget-object v0, v0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->e(Lh/dn;)V

    goto :goto_0
.end method
