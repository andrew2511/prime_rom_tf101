.class Lo/aP;
.super Ljava/lang/Object;

# interfaces
.implements Lh/bv;


# instance fields
.field final synthetic a:Lo/cg;


# direct methods
.method constructor <init>(Lo/cg;)V
    .locals 0

    iput-object p1, p0, Lo/aP;->a:Lo/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lo/aP;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->a(Lo/cg;)Li/C;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li/C;->j(Z)V

    return-void
.end method

.method public a(Lh/fP;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lo/aP;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->c(Lo/cg;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0x18d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lo/aP;->a:Lo/cg;

    const/16 v1, 0x139

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Lo/cg;->a(IILjava/lang/Object;)Z

    goto :goto_0
.end method
