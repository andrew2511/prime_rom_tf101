.class Lh/dt;
.super Lo/at;


# instance fields
.field final synthetic a:Lh/eO;


# direct methods
.method constructor <init>(Lh/eO;Lo/o;)V
    .locals 0

    iput-object p1, p0, Lh/dt;->a:Lh/eO;

    invoke-direct {p0, p2}, Lo/at;-><init>(Lo/o;)V

    return-void
.end method


# virtual methods
.method public i_()V
    .locals 2

    iget-object v0, p0, Lh/dt;->a:Lh/eO;

    iget-object v0, v0, Lh/eO;->b:Lo/i;

    iget-object v1, p0, Lh/dt;->a:Lh/eO;

    iget-object v1, v1, Lh/eO;->a:Lo/o;

    invoke-virtual {v1}, Lo/o;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/i;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lh/dt;->a:Lh/eO;

    iget-object v0, v0, Lh/eO;->c:Lh/df;

    iget-object v0, v0, Lh/df;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->d()V

    iget-object v0, p0, Lh/dt;->a:Lh/eO;

    iget-object v0, v0, Lh/eO;->c:Lh/df;

    iget-object v0, v0, Lh/df;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    return-void
.end method
