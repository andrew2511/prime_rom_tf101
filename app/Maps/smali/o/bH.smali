.class Lo/bH;
.super Lo/br;


# instance fields
.field final synthetic c:Lo/aN;


# direct methods
.method constructor <init>(Lo/aN;ILo/r;LaU/a;Z)V
    .locals 0

    iput-object p1, p0, Lo/bH;->c:Lo/aN;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/br;-><init>(ILo/r;LaU/a;Z)V

    return-void
.end method


# virtual methods
.method public i_()V
    .locals 2

    invoke-super {p0}, Lo/br;->i_()V

    iget-object v0, p0, Lo/bH;->c:Lo/aN;

    iget-object v1, p0, Lo/bH;->a:Law/e;

    invoke-virtual {v0, v1}, Lo/aN;->c(Law/e;)V

    return-void
.end method
