.class public Li/bo;
.super Li/H;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 0

    invoke-direct {p0, p1}, Li/H;-><init>(Li/x;)V

    return-void
.end method


# virtual methods
.method public al_()Lx/J;
    .locals 2

    iget-object p0, p0, Li/bo;->a:Li/x;

    check-cast p0, Li/C;

    invoke-virtual {p0}, Li/C;->bq()Lo/bt;

    move-result-object v0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v0}, Lo/bt;->c()Lx/B;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0
.end method
