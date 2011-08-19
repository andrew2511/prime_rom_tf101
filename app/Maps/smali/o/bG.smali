.class public Lo/bG;
.super Lo/X;


# direct methods
.method public constructor <init>(Lh/eY;LaU/a;Lo/aN;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo/X;-><init>(Lh/eY;LaU/a;Lo/aN;Z)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lo/bG;->a:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lo/bG;->a:Lh/eY;

    new-instance v1, Lo/z;

    invoke-direct {v1, p0}, Lo/z;-><init>(Lo/bG;)V

    invoke-virtual {v0, v1}, Lh/eY;->b(Lh/eT;)V

    return-void
.end method
