.class Lh/fG;
.super Lh/bi;


# instance fields
.field final synthetic a:Lh/v;

.field private b:Z


# direct methods
.method constructor <init>(Lh/v;)V
    .locals 1

    iput-object p1, p0, Lh/fG;->a:Lh/v;

    invoke-direct {p0}, Lh/bi;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/fG;->b:Z

    return-void
.end method


# virtual methods
.method a(Lcom/google/googlenav/bl;)V
    .locals 3

    iget-object v0, p0, Lh/fG;->a:Lh/v;

    iget-object v0, v0, Lh/v;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/fG;->a:Lh/v;

    iget-object v0, v0, Lh/v;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->g()Lx/z;

    move-result-object v0

    instance-of v1, v0, Lx/E;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/bl;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/googlenav/bl;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lh/fG;->a:Lh/v;

    iget-object v1, v1, Lh/v;->j:Lx/J;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lx/J;->c(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lh/fG;->b:Z

    :cond_0
    check-cast v0, Lx/E;

    iget-boolean v1, p0, Lh/fG;->b:Z

    invoke-virtual {v0, p1, v1}, Lx/E;->a(Lcom/google/googlenav/bl;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/google/googlenav/bl;->d()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lh/fG;->a:Lh/v;

    invoke-virtual {v0}, Lh/v;->v()V

    goto :goto_0
.end method

.method a(Lcom/google/googlenav/c;Z)V
    .locals 1

    iget-object v0, p0, Lh/fG;->a:Lh/v;

    invoke-static {v0, p1, p2}, Lh/v;->a(Lh/v;Lcom/google/googlenav/c;Z)V

    return-void
.end method

.method b()V
    .locals 4

    iget-object v0, p0, Lh/fG;->a:Lh/v;

    iget-object v0, v0, Lh/v;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->g()Lx/z;

    move-result-object v0

    instance-of v1, v0, Lx/E;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/fG;->a:Lh/v;

    iget-object v1, v1, Lh/v;->g:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->f()V

    iget-object v1, p0, Lh/fG;->a:Lh/v;

    iget-object v1, v1, Lh/v;->j:Lx/J;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lx/J;->c(I)V

    check-cast v0, Lx/E;

    iget-object v1, p0, Lh/fG;->a:Lh/v;

    iget-object v2, p0, Lh/fG;->a:Lh/v;

    invoke-static {v2}, Lh/v;->d(Lh/v;)Lcom/google/googlenav/bL;

    move-result-object v2

    invoke-virtual {v0}, Lx/E;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/googlenav/bL;->a(Ljava/util/List;)Li/aw;

    move-result-object v2

    invoke-static {v1, v2}, Lh/v;->a(Lh/v;Li/aw;)Li/aw;

    iget-object v1, p0, Lh/fG;->a:Lh/v;

    invoke-static {v1}, Lh/v;->e(Lh/v;)Li/aw;

    move-result-object v1

    iget-object v2, p0, Lh/fG;->a:Lh/v;

    iget-object v2, v2, Lh/v;->g:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->I()Lh/eo;

    move-result-object v2

    invoke-virtual {v2}, Lh/eo;->E()Lh/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/aw;->a(Lh/v;)V

    iget-object v1, p0, Lh/fG;->a:Lh/v;

    invoke-static {v1}, Lh/v;->e(Lh/v;)Li/aw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/E;->a(Li/aw;)V

    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Lh/fG;->a:Lh/v;

    invoke-static {v0}, Lh/v;->b(Lh/v;)V

    return-void
.end method
