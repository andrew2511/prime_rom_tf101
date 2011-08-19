.class Lcom/google/googlenav/ui/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/F;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/F;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/k;->a:Lcom/google/googlenav/ui/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/k;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/F;->a(Lcom/google/googlenav/ui/F;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lcom/google/googlenav/ui/k;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/F;->d(Lcom/google/googlenav/ui/F;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/k;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/F;->b(Lcom/google/googlenav/ui/F;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/k;->a:Lcom/google/googlenav/ui/F;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/F;->a(Lcom/google/googlenav/ui/F;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/k;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/F;->e(Lcom/google/googlenav/ui/F;)V

    goto :goto_0
.end method
