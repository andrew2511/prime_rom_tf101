.class Lh/fV;
.super Ljava/lang/Object;

# interfaces
.implements Lo/am;


# instance fields
.field final synthetic a:Lh/dN;


# direct methods
.method constructor <init>(Lh/dN;)V
    .locals 0

    iput-object p1, p0, Lh/fV;->a:Lh/dN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lh/fV;->a:Lh/dN;

    iget-object v0, v0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->E()Lo/bj;

    move-result-object v0

    invoke-virtual {v0}, Lo/bj;->l()Lo/I;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lh/fV;->a:Lh/dN;

    invoke-static {v1}, Lh/dN;->c(Lh/dN;)Lcom/google/googlenav/h;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lh/fV;->a:Lh/dN;

    invoke-static {v1}, Lh/dN;->d(Lh/dN;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lh/fV;->a:Lh/dN;

    invoke-static {v1}, Lh/dN;->c(Lh/dN;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/I;->a(Law/e;)Z

    move-result v1

    iget-object v2, p0, Lh/fV;->a:Lh/dN;

    invoke-static {v2}, Lh/dN;->c(Lh/dN;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/I;->b(Law/e;)Z

    move-result v0

    iget-object v2, p0, Lh/fV;->a:Lh/dN;

    invoke-static {v2}, Lh/dN;->c(Lh/dN;)Lcom/google/googlenav/h;

    move-result-object v2

    if-nez v0, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v2, v1, v3}, Lcom/google/googlenav/h;->a(ZZ)V

    iget-object v2, p0, Lh/fV;->a:Lh/dN;

    iget-object v2, v2, Lh/dN;->a:Lcom/google/googlenav/ui/az;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/az;->a(Z)V

    iget-object v1, p0, Lh/fV;->a:Lh/dN;

    iget-object v1, v1, Lh/dN;->b:Lcom/google/googlenav/ui/az;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/az;->a(Z)V

    :cond_1
    iget-object v0, p0, Lh/fV;->a:Lh/dN;

    invoke-static {v0, v4}, Lh/dN;->a(Lh/dN;Z)Z

    iget-object v0, p0, Lh/fV;->a:Lh/dN;

    invoke-virtual {v0}, Lh/dN;->h()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
