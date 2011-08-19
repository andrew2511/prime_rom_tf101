.class final Lh/cc;
.super Ljava/lang/Object;

# interfaces
.implements Lh/cD;
.implements Lo/cd;


# instance fields
.field final synthetic a:Lh/dN;

.field private final b:LH/m;


# direct methods
.method private constructor <init>(Lh/dN;LH/m;)V
    .locals 0

    iput-object p1, p0, Lh/cc;->a:Lh/dN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh/cc;->b:LH/m;

    return-void
.end method

.method synthetic constructor <init>(Lh/dN;LH/m;Lh/fT;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/cc;-><init>(Lh/dN;LH/m;)V

    return-void
.end method


# virtual methods
.method public D_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public E_()V
    .locals 1

    iget-object v0, p0, Lh/cc;->a:Lh/dN;

    invoke-virtual {v0}, Lh/dN;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/cc;->a:Lh/dN;

    invoke-virtual {v0}, Lh/dN;->v()V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    iget-object v0, p0, Lh/cc;->a:Lh/dN;

    iget-object v0, v0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/cc;->a:Lh/dN;

    iget-object v0, v0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    return-void
.end method

.method public a(Law/e;Ljava/util/List;Law/e;J)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Lcom/google/googlenav/h;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    iget-object v2, p0, Lh/cc;->b:LH/m;

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/h;-><init>(Law/e;LH/m;)V

    invoke-virtual {v1}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cc;->a:Lh/dN;

    invoke-virtual {v0, v1}, Lh/dN;->a(Lcom/google/googlenav/h;)V

    :cond_0
    iget-object v0, p0, Lh/cc;->a:Lh/dN;

    iget-object v0, v0, Lh/dN;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    return-void
.end method

.method public a(Lu/h;Ljava/lang/Long;Law/e;)V
    .locals 3

    new-instance v0, Lcom/google/googlenav/h;

    iget-object v1, p0, Lh/cc;->b:LH/m;

    invoke-direct {v0, p3, v1}, Lcom/google/googlenav/h;-><init>(Law/e;LH/m;)V

    invoke-virtual {v0}, Lcom/google/googlenav/h;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/h;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lh/cc;->a:Lh/dN;

    invoke-static {v1}, Lh/dN;->a(Lh/dN;)Lh/eI;

    move-result-object v1

    new-instance v2, Lh/cj;

    invoke-direct {v2, p0, v0}, Lh/cj;-><init>(Lh/cc;Lcom/google/googlenav/h;)V

    invoke-virtual {v1, v2}, Lh/eI;->a(Lh/fM;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lh/cc;->a:Lh/dN;

    invoke-virtual {v1, v0}, Lh/dN;->a(Lcom/google/googlenav/h;)V

    goto :goto_0
.end method
