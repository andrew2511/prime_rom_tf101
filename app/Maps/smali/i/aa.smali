.class public Li/aa;
.super Li/H;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 0

    invoke-direct {p0, p1}, Li/H;-><init>(Li/x;)V

    return-void
.end method


# virtual methods
.method public al_()Lx/J;
    .locals 3

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    iget-object v0, p0, Li/aa;->a:Li/x;

    check-cast v0, Li/aQ;

    invoke-virtual {v0}, Li/aQ;->bt()Lx/B;

    move-result-object v0

    iget-object v2, p0, Li/aa;->a:Li/x;

    invoke-virtual {v1, v0, v2}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0
.end method
