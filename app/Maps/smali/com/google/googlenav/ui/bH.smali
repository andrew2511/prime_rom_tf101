.class Lcom/google/googlenav/ui/bH;
.super Ljava/lang/Object;

# interfaces
.implements Li/o;


# instance fields
.field final synthetic a:Li/C;

.field final synthetic b:Lcom/google/googlenav/ui/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aT;Li/C;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bH;->b:Lcom/google/googlenav/ui/aT;

    iput-object p2, p0, Lcom/google/googlenav/ui/bH;->a:Li/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/j;)V
    .locals 2

    check-cast p1, Lcom/google/googlenav/z;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/bH;->a:Li/C;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bH;->b:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->d(Lcom/google/googlenav/ui/aT;)Li/aE;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/aE;->c(Lcom/google/googlenav/z;)Li/C;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/bH;->b:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->d(Lcom/google/googlenav/ui/aT;)Li/aE;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bH;->a:Li/C;

    invoke-virtual {v0, v1}, Li/aE;->b(Li/x;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/bH;->b:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->d(Lcom/google/googlenav/ui/aT;)Li/aE;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bH;->a:Li/C;

    invoke-virtual {v0, v1}, Li/aE;->a(Li/C;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lo/by;->a(Lcom/google/googlenav/a;)V

    goto :goto_0
.end method
