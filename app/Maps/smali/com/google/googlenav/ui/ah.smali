.class Lcom/google/googlenav/ui/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lf/a;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aT;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/ah;->a:Lcom/google/googlenav/ui/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->a:Lcom/google/googlenav/ui/aT;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/ui/aT;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->U()V

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/ui/aT;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->b(Lcom/google/googlenav/ui/aT;)Lcom/google/googlenav/ui/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/as;->b()V

    :cond_0
    return-void
.end method

.method public a(ZZZ)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->a:Lcom/google/googlenav/ui/aT;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/ui/aT;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->a()V

    :cond_0
    return-void
.end method
