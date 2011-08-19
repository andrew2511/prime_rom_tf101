.class final Lam/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cf;


# instance fields
.field final synthetic a:Li/v;

.field final synthetic b:I

.field final synthetic c:Lam/k;

.field final synthetic d:LG/Q;


# direct methods
.method constructor <init>(Li/v;ILam/k;LG/Q;)V
    .locals 0

    iput-object p1, p0, Lam/g;->a:Li/v;

    iput p2, p0, Lam/g;->b:I

    iput-object p3, p0, Lam/g;->c:Lam/k;

    iput-object p4, p0, Lam/g;->d:LG/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LG/Q;)V
    .locals 3

    iget-object v0, p0, Lam/g;->a:Li/v;

    invoke-virtual {v0}, Li/v;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    check-cast v0, Lu/v;

    invoke-static {p1}, Lad/m;->b(LG/Q;)Lf/h;

    move-result-object v1

    invoke-static {v1}, Lu/h;->a(Lf/h;)Lu/h;

    move-result-object v1

    iget v2, p0, Lam/g;->b:I

    if-nez v2, :cond_0

    new-instance v2, Lu/g;

    invoke-virtual {v0}, Lu/v;->k_()Lu/h;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lu/g;-><init>(Lu/h;Lu/h;)V

    move-object v0, v2

    :goto_0
    iget-object v1, p0, Lam/g;->a:Li/v;

    invoke-virtual {v1, v0}, Li/v;->a(Lu/g;)Lu/v;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu/v;->a(Z)V

    new-instance v1, Lam/l;

    invoke-direct {v1, p0}, Lam/l;-><init>(Lam/g;)V

    invoke-virtual {v0, v1}, Lu/v;->a(Lu/t;)V

    iget-object v1, p0, Lam/g;->a:Li/v;

    invoke-virtual {v1, v0}, Li/v;->c(Lu/v;)V

    iget-object v0, p0, Lam/g;->a:Li/v;

    invoke-virtual {v0}, Li/v;->p()V

    iget v0, p0, Lam/g;->b:I

    if-nez v0, :cond_1

    const-string v0, "ds"

    :goto_1
    invoke-static {v0}, Li/v;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Lu/g;

    invoke-virtual {v0}, Lu/v;->j_()Lu/h;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lu/g;-><init>(Lu/h;Lu/h;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "de"

    goto :goto_1
.end method
