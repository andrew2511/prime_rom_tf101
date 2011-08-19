.class Lcom/google/googlenav/ui/Q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/h;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aT;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/aT;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/Q;->a:Lcom/google/googlenav/ui/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/aT;Lcom/google/googlenav/ui/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/Q;-><init>(Lcom/google/googlenav/ui/aT;)V

    return-void
.end method


# virtual methods
.method public R_()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->w()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x196

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/Q;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/Q;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->m(Lcom/google/googlenav/ui/aT;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->e()V

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

.method public an_()V
    .locals 0

    return-void
.end method

.method public ao_()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/Q;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->m(Lcom/google/googlenav/ui/aT;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->e()V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/Q;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->m(Lcom/google/googlenav/ui/aT;)Lh/eY;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x195

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
