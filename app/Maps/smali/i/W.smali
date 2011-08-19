.class Li/W;
.super Lx/W;


# instance fields
.field final synthetic a:Li/aw;


# direct methods
.method constructor <init>(Li/aw;)V
    .locals 0

    iput-object p1, p0, Li/W;->a:Li/aw;

    invoke-direct {p0}, Lx/W;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 3

    iget-object v0, p0, Li/W;->a:Li/aw;

    invoke-static {v0}, Li/aw;->f(Li/aw;)V

    iget-object v0, p0, Li/W;->a:Li/aw;

    iget-object v0, v0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    iget-object v1, p0, Li/W;->a:Li/aw;

    invoke-virtual {v1}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Li/aE;->a(Lcom/google/googlenav/z;I)V

    const/4 v0, 0x1

    return v0
.end method
