.class Lh/fO;
.super Lcom/google/googlenav/aK;


# instance fields
.field final synthetic a:Lh/eq;


# direct methods
.method constructor <init>(Lh/eq;)V
    .locals 0

    iput-object p1, p0, Lh/fO;->a:Lh/eq;

    invoke-direct {p0}, Lcom/google/googlenav/aK;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh/fO;->a:Lh/eq;

    iget-object v0, v0, Lh/eq;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/fO;->a:Lh/eq;

    invoke-static {v0}, Lh/eq;->a(Lh/eq;)Lh/de;

    move-result-object v0

    invoke-interface {v0}, Lh/de;->a()V

    iget-object v0, p0, Lh/fO;->a:Lh/eq;

    iget-object v0, v0, Lh/eq;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x2fb

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lh/fO;->a:Lh/eq;

    invoke-virtual {v0}, Lh/eq;->v()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lh/fO;->a:Lh/eq;

    invoke-static {v0}, Lh/eq;->b(Lh/eq;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/fO;->a:Lh/eq;

    invoke-static {v0}, Lh/eq;->a(Lh/eq;)Lh/de;

    move-result-object v0

    invoke-interface {v0}, Lh/de;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/fO;->a:Lh/eq;

    iget-object v0, v0, Lh/eq;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/fO;->a:Lh/eq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lh/eq;->a(Lh/eq;Z)Z

    goto :goto_0
.end method
