.class Lcom/google/googlenav/ui/aa;
.super Lcom/google/googlenav/Q;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aT;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aa;->a:Lcom/google/googlenav/ui/aT;

    invoke-direct {p0}, Lcom/google/googlenav/Q;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/aa;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->g(Lcom/google/googlenav/ui/aT;)LH/f;

    move-result-object v0

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aa;->a:Lcom/google/googlenav/ui/aT;

    iget-object v1, p0, Lcom/google/googlenav/ui/aa;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v1}, Lcom/google/googlenav/ui/aT;->g(Lcom/google/googlenav/ui/aT;)LH/f;

    move-result-object v1

    invoke-virtual {v1}, LH/f;->p()Lf/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/aa;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v2}, Lcom/google/googlenav/ui/aT;->g(Lcom/google/googlenav/ui/aT;)LH/f;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/aT;->a(Lf/h;LH/f;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/aa;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->h(Lcom/google/googlenav/ui/aT;)Lo/bg;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aa;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->h(Lcom/google/googlenav/ui/aT;)Lo/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/aa;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v1}, Lcom/google/googlenav/ui/aT;->g(Lcom/google/googlenav/ui/aT;)LH/f;

    move-result-object v1

    invoke-virtual {v1}, LH/f;->p()Lf/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/aa;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v2}, Lcom/google/googlenav/ui/aT;->g(Lcom/google/googlenav/ui/aT;)LH/f;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/bg;->a(Lf/h;LH/f;)V

    :cond_0
    return-void
.end method
