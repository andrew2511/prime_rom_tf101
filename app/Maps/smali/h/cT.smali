.class Lh/cT;
.super Lcom/google/googlenav/bw;


# instance fields
.field final synthetic a:Lh/cA;


# direct methods
.method constructor <init>(Lh/cA;Law/e;Lcom/google/googlenav/bv;)V
    .locals 0

    iput-object p1, p0, Lh/cT;->a:Lh/cA;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/bw;-><init>(Law/e;Lcom/google/googlenav/bv;)V

    return-void
.end method


# virtual methods
.method public i_()V
    .locals 2

    invoke-super {p0}, Lcom/google/googlenav/bw;->i_()V

    iget-object v0, p0, Lh/cT;->a:Lh/cA;

    iget-object v0, v0, Lh/cA;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->E()Lo/bj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/bj;->b(Lo/am;)V

    iget-object v0, p0, Lh/cT;->a:Lh/cA;

    iget-object v0, v0, Lh/cA;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cT;->a:Lh/cA;

    iget-object v0, v0, Lh/cA;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x13f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
