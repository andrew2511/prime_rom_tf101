.class Lcom/google/googlenav/ui/K;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/h;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/bv;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/bv;Lcom/google/googlenav/ui/O;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/K;-><init>(Lcom/google/googlenav/ui/bv;)V

    return-void
.end method


# virtual methods
.method public R_()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    invoke-static {v0}, Lcom/google/googlenav/ui/bv;->c(Lcom/google/googlenav/ui/bv;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bv;->a(Lcom/google/googlenav/ui/bv;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    invoke-static {v0}, Lcom/google/googlenav/ui/bv;->d(Lcom/google/googlenav/ui/bv;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    invoke-static {v0}, Lcom/google/googlenav/ui/bv;->a(Lcom/google/googlenav/ui/bv;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    new-instance v1, Lh/fc;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lh/fc;-><init>(I)V

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    invoke-static {v0}, Lcom/google/googlenav/ui/bv;->a(Lcom/google/googlenav/ui/bv;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->g()I

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    invoke-static {v0}, Lcom/google/googlenav/ui/bv;->a(Lcom/google/googlenav/ui/bv;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bv;->b()V

    :cond_1
    return-void
.end method

.method public S_()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    invoke-static {v0}, Lcom/google/googlenav/ui/bv;->a(Lcom/google/googlenav/ui/bv;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->U()Lh/al;

    move-result-object v0

    invoke-virtual {v0}, Lh/al;->S_()V

    return-void
.end method

.method public W_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public an_()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    invoke-static {v0}, Lcom/google/googlenav/ui/bv;->a(Lcom/google/googlenav/ui/bv;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->U()Lh/al;

    move-result-object v0

    invoke-virtual {v0}, Lh/al;->an_()V

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    invoke-static {v0}, Lcom/google/googlenav/ui/bv;->b(Lcom/google/googlenav/ui/bv;)Li/aE;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li/aE;->c(I)V

    return-void
.end method

.method public ao_()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    invoke-static {v0}, Lcom/google/googlenav/ui/bv;->c(Lcom/google/googlenav/ui/bv;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bv;->a(Lcom/google/googlenav/ui/bv;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    invoke-static {v0}, Lcom/google/googlenav/ui/bv;->a(Lcom/google/googlenav/ui/bv;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->e()V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    invoke-static {v0}, Lcom/google/googlenav/ui/bv;->a(Lcom/google/googlenav/ui/bv;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->U()Lh/al;

    move-result-object v0

    invoke-virtual {v0}, Lh/al;->ao_()V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bv;->a(Lcom/google/googlenav/ui/bv;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    invoke-static {v0}, Lcom/google/googlenav/ui/bv;->a(Lcom/google/googlenav/ui/bv;)Lh/eY;

    move-result-object v0

    const/16 v1, 0x263

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x195

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/K;->a:Lcom/google/googlenav/ui/bv;

    invoke-static {v0}, Lcom/google/googlenav/ui/bv;->a(Lcom/google/googlenav/ui/bv;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->I()Lh/eo;

    move-result-object v0

    invoke-virtual {v0}, Lh/eo;->U()Lh/al;

    move-result-object v0

    invoke-virtual {v0}, Lh/al;->g()V

    return-void
.end method
