.class Lh/fT;
.super Lcom/google/googlenav/bw;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lh/dN;


# direct methods
.method constructor <init>(Lh/dN;Law/e;Lcom/google/googlenav/bv;I)V
    .locals 0

    iput-object p1, p0, Lh/fT;->b:Lh/dN;

    iput p4, p0, Lh/fT;->a:I

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/bw;-><init>(Law/e;Lcom/google/googlenav/bv;)V

    return-void
.end method


# virtual methods
.method public i_()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/googlenav/bw;->i_()V

    iget-object v0, p0, Lh/fT;->b:Lh/dN;

    iget-object v0, v0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->E()Lo/bj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/bj;->b(Lo/am;)V

    iget v0, p0, Lh/fT;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fT;->b:Lh/dN;

    iget-object v0, v0, Lh/dN;->a:Lcom/google/googlenav/ui/az;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_0
    iget-object v1, p0, Lh/fT;->b:Lh/dN;

    iget-object v1, v1, Lh/dN;->a:Lcom/google/googlenav/ui/az;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/az;->a(Z)V

    :cond_0
    iget v0, p0, Lh/fT;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/fT;->b:Lh/dN;

    iget-object v0, v0, Lh/dN;->b:Lcom/google/googlenav/ui/az;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/az;->a()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    :goto_1
    iget-object v1, p0, Lh/fT;->b:Lh/dN;

    iget-object v1, v1, Lh/dN;->b:Lcom/google/googlenav/ui/az;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/az;->a(Z)V

    :cond_1
    iget-object v0, p0, Lh/fT;->b:Lh/dN;

    invoke-virtual {v0}, Lh/dN;->h()V

    iget-object v0, p0, Lh/fT;->b:Lh/dN;

    iget-object v0, v0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x13f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lh/fT;->b:Lh/dN;

    iget-object v0, v0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method
