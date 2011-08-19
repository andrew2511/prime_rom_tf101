.class Lh/Z;
.super Ljava/lang/Object;

# interfaces
.implements Lh/cD;


# instance fields
.field final synthetic a:Lh/dR;


# direct methods
.method constructor <init>(Lh/dR;)V
    .locals 0

    iput-object p1, p0, Lh/Z;->a:Lh/dR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public D_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public E_()V
    .locals 2

    iget-object v0, p0, Lh/Z;->a:Lh/dR;

    iget-object v0, v0, Lh/dR;->a:Lh/ew;

    iget-object v0, v0, Lh/ew;->d:Lh/i;

    invoke-interface {v0}, Lh/i;->c()V

    iget-object v0, p0, Lh/Z;->a:Lh/dR;

    iget-object v0, v0, Lh/dR;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method public a(Lu/h;Ljava/lang/Long;Law/e;)V
    .locals 2

    iget-object v0, p0, Lh/Z;->a:Lh/dR;

    iget-object v0, v0, Lh/dR;->a:Lh/ew;

    iget-object v0, v0, Lh/ew;->d:Lh/i;

    invoke-interface {v0}, Lh/i;->c()V

    iget-object v0, p0, Lh/Z;->a:Lh/dR;

    iget-object v0, v0, Lh/dR;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    iget-object v0, p0, Lh/Z;->a:Lh/dR;

    iget-object v0, v0, Lh/dR;->a:Lh/ew;

    invoke-virtual {p1}, Lu/h;->f()Lf/h;

    move-result-object v1

    iput-object v1, v0, Lh/ew;->c:Lf/h;

    iget-object v0, p0, Lh/Z;->a:Lh/dR;

    invoke-virtual {p1}, Lu/h;->j()Lcom/google/googlenav/c;

    move-result-object v1

    invoke-static {v0, v1}, Lh/dR;->a(Lh/dR;Lcom/google/googlenav/c;)V

    return-void
.end method
