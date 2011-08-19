.class Lcom/google/googlenav/ui/bg;
.super Lx/W;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aP;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aP;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bg;->a:Lcom/google/googlenav/ui/aP;

    invoke-direct {p0}, Lx/W;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/bg;->a:Lcom/google/googlenav/ui/aP;

    invoke-static {v0}, Lcom/google/googlenav/ui/aP;->a(Lcom/google/googlenav/ui/aP;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bg;->a:Lcom/google/googlenav/ui/aP;

    invoke-static {v1}, Lcom/google/googlenav/ui/aP;->a(Lcom/google/googlenav/ui/aP;)Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lh/eY;->a(Li/aE;Z)V

    return v2
.end method
