.class Lh/bK;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lh/fa;


# direct methods
.method constructor <init>(Lh/fa;)V
    .locals 0

    iput-object p1, p0, Lh/bK;->a:Lh/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lh/bK;->a:Lh/fa;

    invoke-static {v0}, Lh/fa;->d(Lh/fa;)LH/f;

    move-result-object v0

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/bK;->a:Lh/fa;

    invoke-static {v0}, Lh/fa;->e(Lh/fa;)Lcom/google/googlenav/bs;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/bK;->a:Lh/fa;

    iget-object v1, p0, Lh/bK;->a:Lh/fa;

    invoke-static {v1}, Lh/fa;->d(Lh/fa;)LH/f;

    move-result-object v1

    invoke-virtual {v1}, LH/f;->p()Lf/h;

    move-result-object v1

    invoke-static {v0, v1}, Lh/fa;->a(Lh/fa;Lf/h;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lh/bK;->a:Lh/fa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lh/fa;->a(Lh/fa;Z)V

    goto :goto_0
.end method
