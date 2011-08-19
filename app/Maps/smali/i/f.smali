.class Li/f;
.super Ljava/lang/Object;

# interfaces
.implements Lh/cD;


# instance fields
.field final synthetic a:Li/aQ;


# direct methods
.method constructor <init>(Li/aQ;)V
    .locals 0

    iput-object p1, p0, Li/f;->a:Li/aQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public D_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public E_()V
    .locals 0

    return-void
.end method

.method public a(Lu/h;Ljava/lang/Long;Law/e;)V
    .locals 2

    iget-object v0, p0, Li/f;->a:Li/aQ;

    iget-object v0, v0, Li/aQ;->c:Ljava/lang/String;

    iget-object v1, p0, Li/f;->a:Li/aQ;

    invoke-virtual {v1}, Li/aQ;->C()Lc/o;

    move-result-object v1

    invoke-virtual {v1, p3}, Lc/o;->a(Law/e;)V

    iget-object v1, p0, Li/f;->a:Li/aQ;

    iput-object v0, v1, Li/aQ;->c:Ljava/lang/String;

    if-eqz p3, :cond_0

    const/16 v0, 0xb

    invoke-static {p3, v0}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aS;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Li/f;->a:Li/aQ;

    iget-object v0, v0, Li/aQ;->n:Lx/J;

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/f;->a:Li/aQ;

    iget-object v1, p0, Li/f;->a:Li/aQ;

    iget-object v1, v1, Li/aQ;->n:Lx/J;

    invoke-virtual {v0, v1}, Li/aQ;->b(Lx/J;)V

    :cond_1
    iget-object v0, p0, Li/f;->a:Li/aQ;

    iget-object v1, p0, Li/f;->a:Li/aQ;

    invoke-virtual {v1}, Li/aQ;->bq()Lx/J;

    move-result-object v1

    iput-object v1, v0, Li/aQ;->n:Lx/J;

    iget-object v0, p0, Li/f;->a:Li/aQ;

    iget-object v0, v0, Li/aQ;->n:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method
