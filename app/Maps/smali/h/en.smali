.class public Lh/en;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/h;


# instance fields
.field private final a:Lh/eY;

.field private final b:Lh/y;

.field private c:LaH/a;


# direct methods
.method public constructor <init>(Lh/eY;Lh/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh/en;->b:Lh/y;

    iput-object p1, p0, Lh/en;->a:Lh/eY;

    return-void
.end method


# virtual methods
.method public R_()V
    .locals 2

    iget-object v0, p0, Lh/en;->c:LaH/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/en;->a:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->e()V

    iget-object v0, p0, Lh/en;->b:Lh/y;

    iget-object v1, p0, Lh/en;->c:LaH/a;

    invoke-virtual {v0, v1}, Lh/y;->a(Lak/d;)V

    :cond_0
    return-void
.end method

.method public S_()V
    .locals 0

    return-void
.end method

.method public W_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(LaH/a;)V
    .locals 2

    iput-object p1, p0, Lh/en;->c:LaH/a;

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/en;->b:Lh/y;

    iget-object v1, p0, Lh/en;->c:LaH/a;

    invoke-virtual {v0, v1}, Lh/y;->a(Lak/d;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lh/en;->b()V

    goto :goto_0
.end method

.method public an_()V
    .locals 2

    iget-object v0, p0, Lh/en;->b:Lh/y;

    iget-object v0, v0, Lh/y;->b:Lh/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/en;->b:Lh/y;

    iget-object v0, v0, Lh/y;->b:Lh/f;

    iget-object v0, v0, Lh/f;->i:Lcom/google/googlenav/ui/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/en;->b:Lh/y;

    iget-object v0, v0, Lh/y;->b:Lh/f;

    iget-object v0, v0, Lh/f;->i:Lcom/google/googlenav/ui/az;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/az;->a(Z)V

    :cond_0
    return-void
.end method

.method public ao_()V
    .locals 2

    iget-object v0, p0, Lh/en;->c:LaH/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/en;->a:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/en;->c:LaH/a;

    iget-object v0, p0, Lh/en;->b:Lh/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/y;->a(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lh/en;->a:Lh/eY;

    const/16 v1, 0x357

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x358

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
