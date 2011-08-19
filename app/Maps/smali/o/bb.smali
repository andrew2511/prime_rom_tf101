.class Lo/bb;
.super Lo/at;


# instance fields
.field final synthetic a:Lo/ae;


# direct methods
.method constructor <init>(Lo/ae;Lo/o;)V
    .locals 0

    iput-object p1, p0, Lo/bb;->a:Lo/ae;

    invoke-direct {p0, p2}, Lo/at;-><init>(Lo/o;)V

    return-void
.end method


# virtual methods
.method public i_()V
    .locals 2

    iget-object v0, p0, Lo/bb;->a:Lo/ae;

    iget-object v0, v0, Lo/ae;->c:Lo/cg;

    invoke-static {v0}, Lo/cg;->c(Lo/cg;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    return-void
.end method
