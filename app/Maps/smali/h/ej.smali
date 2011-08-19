.class Lh/ej;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aY;

.field final synthetic b:Lh/dc;


# direct methods
.method constructor <init>(Lh/dc;Lcom/google/googlenav/ui/aY;)V
    .locals 0

    iput-object p1, p0, Lh/ej;->b:Lh/dc;

    iput-object p2, p0, Lh/ej;->a:Lcom/google/googlenav/ui/aY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lh/ej;->b:Lh/dc;

    iget-object v0, v0, Lh/dc;->j:Lx/J;

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/ej;->b:Lh/dc;

    invoke-virtual {v0}, Lh/dc;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ej;->b:Lh/dc;

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    iget-object v2, p0, Lh/ej;->b:Lh/dc;

    invoke-static {v2}, Lh/dc;->a(Lh/dc;)Lx/B;

    move-result-object v2

    iget-object v3, p0, Lh/ej;->a:Lcom/google/googlenav/ui/aY;

    invoke-virtual {v1, v2, v3}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v1

    iput-object v1, v0, Lh/dc;->j:Lx/J;

    iget-object v0, p0, Lh/ej;->b:Lh/dc;

    iget-object v0, v0, Lh/dc;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    :cond_0
    return-void
.end method
