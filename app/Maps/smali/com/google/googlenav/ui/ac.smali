.class Lcom/google/googlenav/ui/ac;
.super Lcom/google/googlenav/Q;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aT;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/ac;->a:Lcom/google/googlenav/ui/aT;

    invoke-direct {p0}, Lcom/google/googlenav/Q;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/h;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/ac;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->n()V

    iget-object v0, p0, Lcom/google/googlenav/ui/ac;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->o()V

    iget-object v0, p0, Lcom/google/googlenav/ui/ac;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->f(Lcom/google/googlenav/ui/aT;)LaU/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/R;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/R;-><init>(Lcom/google/googlenav/ui/ac;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
