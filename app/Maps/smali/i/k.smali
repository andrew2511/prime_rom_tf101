.class Li/k;
.super Ljava/lang/Object;

# interfaces
.implements Lx/U;


# instance fields
.field final synthetic a:Li/w;


# direct methods
.method constructor <init>(Li/w;)V
    .locals 0

    iput-object p1, p0, Li/k;->a:Li/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 1

    iget-object v0, p0, Li/k;->a:Li/w;

    iget-object v0, v0, Li/w;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aI()Lcom/google/googlenav/ui/aP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aP;->e()V

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lx/Q;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
