.class Lo/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lo/L;


# instance fields
.field final synthetic a:Lo/cg;


# direct methods
.method constructor <init>(Lo/cg;)V
    .locals 0

    iput-object p1, p0, Lo/ak;->a:Lo/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lo/ak;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->c(Lo/cg;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0x3c0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    return-void
.end method

.method public a(J)V
    .locals 2

    iget-object v0, p0, Lo/ak;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->c(Lo/cg;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0x16c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lo/ak;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->e(Lo/cg;)Lo/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/g;->a(J)V

    iget-object v0, p0, Lo/ak;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->a(Lo/cg;)Li/C;

    move-result-object v0

    invoke-virtual {v0}, Li/C;->M()V

    invoke-static {p1, p2}, Lo/A;->b(J)V

    return-void
.end method
