.class Li/bg;
.super Ljava/lang/Object;

# interfaces
.implements Lh/bv;


# instance fields
.field final synthetic a:Lcom/google/googlenav/c;

.field final synthetic b:Li/bl;


# direct methods
.method constructor <init>(Li/bl;Lcom/google/googlenav/c;)V
    .locals 0

    iput-object p1, p0, Li/bg;->b:Li/bl;

    iput-object p2, p0, Li/bg;->a:Lcom/google/googlenav/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Li/bg;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ag()Lcom/google/googlenav/bH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/bg;->b:Li/bl;

    iget-object v0, v0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    iget-object v1, p0, Li/bg;->a:Lcom/google/googlenav/c;

    const-string v2, "mo"

    invoke-virtual {v0, v1, v2}, Lh/eY;->a(Lcom/google/googlenav/c;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lh/fP;)V
    .locals 4

    iget-object v0, p0, Li/bg;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ag()Lcom/google/googlenav/bH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->a()V

    :try_start_0
    iget-object v0, p0, Li/bg;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ag()Lcom/google/googlenav/bH;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/s;

    const/16 v2, 0x200

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, LaY/a;->a(Lh/fP;IZ)Lk/l;

    move-result-object v2

    iget-object v3, p1, Lh/fP;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/s;-><init>(Lk/l;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bH;->a(Lcom/google/googlenav/s;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Li/bg;->b:Li/bl;

    iget-object v0, v0, Li/bl;->g:Lcom/google/googlenav/ui/aT;

    const/16 v1, 0x2bc

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Li/bg;->a:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    goto :goto_0
.end method
