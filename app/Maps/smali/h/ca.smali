.class Lh/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lh/H;


# instance fields
.field final synthetic a:Lh/K;


# direct methods
.method constructor <init>(Lh/K;)V
    .locals 0

    iput-object p1, p0, Lh/ca;->a:Lh/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh/ca;->a:Lh/K;

    iget-object v0, v0, Lh/K;->a:Lh/cs;

    invoke-static {v0}, Lh/cs;->a(Lh/cs;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/ca;->a:Lh/K;

    iget-object v0, v0, Lh/K;->a:Lh/cs;

    invoke-static {v0}, Lh/cs;->a(Lh/cs;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/bG;)V
    .locals 3

    iget-object v0, p0, Lh/ca;->a:Lh/K;

    iget-object v0, v0, Lh/K;->a:Lh/cs;

    invoke-static {v0}, Lh/cs;->a(Lh/cs;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/ca;->a:Lh/K;

    iget-object v0, v0, Lh/K;->a:Lh/cs;

    invoke-static {v0}, Lh/cs;->c(Lh/cs;)Lcom/google/googlenav/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->e(Law/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/ca;->a:Lh/K;

    const/16 v1, 0xab

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh/ca;->a:Lh/K;

    iget-object v2, v2, Lh/K;->a:Lh/cs;

    invoke-static {v2}, Lh/cs;->c(Lh/cs;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/bB;->b(Law/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lh/K;->a(Lh/K;Lcom/google/googlenav/bG;Ljava/lang/String;)V

    goto :goto_0
.end method
