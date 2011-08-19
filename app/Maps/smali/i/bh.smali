.class Li/bh;
.super Ljava/lang/Object;

# interfaces
.implements LaD/n;


# instance fields
.field final synthetic a:Li/bl;


# direct methods
.method constructor <init>(Li/bl;)V
    .locals 0

    iput-object p1, p0, Li/bh;->a:Li/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ar_()V
    .locals 2

    iget-object v0, p0, Li/bh;->a:Li/bl;

    iget-object v0, v0, Li/bl;->n:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/bh;->a:Li/bl;

    invoke-virtual {v0}, Li/bl;->aF()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Li/bh;->a:Li/bl;

    iget-object v0, v0, Li/bl;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->g()Lx/z;

    move-result-object v0

    sget-object v1, Lx/f;->a:Lx/f;

    invoke-virtual {v0, v1}, Lx/z;->a(Lx/f;)V

    iget-object v0, p0, Li/bh;->a:Li/bl;

    iget-object v0, v0, Li/bl;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    goto :goto_0
.end method
