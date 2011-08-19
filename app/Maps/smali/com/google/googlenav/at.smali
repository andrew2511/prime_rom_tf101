.class Lcom/google/googlenav/at;
.super Ljava/lang/Object;

# interfaces
.implements Lh/de;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bC;


# direct methods
.method constructor <init>(Lcom/google/googlenav/bC;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/at;->a:Lcom/google/googlenav/bC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "a"

    const-string v1, "f"

    invoke-static {v0, v1}, Lcom/google/googlenav/az;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/at;->a:Lcom/google/googlenav/bC;

    invoke-static {v1}, Lcom/google/googlenav/bC;->a(Lcom/google/googlenav/bC;)Lo/aN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->a(Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/google/googlenav/az;->c(Ljava/lang/String;)V

    const-string v0, "a"

    const-string v1, "s"

    invoke-static {v0, v1}, Lcom/google/googlenav/az;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/at;->a:Lcom/google/googlenav/bC;

    iget-object v0, v0, Lcom/google/googlenav/bC;->d:Lcom/google/googlenav/az;

    invoke-static {v0}, Lcom/google/googlenav/az;->b(Lcom/google/googlenav/az;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "a"

    const-string v1, "c"

    invoke-static {v0, v1}, Lcom/google/googlenav/az;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/at;->a:Lcom/google/googlenav/bC;

    invoke-static {v1}, Lcom/google/googlenav/bC;->b(Lcom/google/googlenav/bC;)Lo/aN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->a(Lcom/google/googlenav/login/h;)V

    return-void
.end method
