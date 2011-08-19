.class Lcom/google/googlenav/ui/bG;
.super Ljava/lang/Object;

# interfaces
.implements Lf/a;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/ui/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aT;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bG;->b:Lcom/google/googlenav/ui/aT;

    iput-object p2, p0, Lcom/google/googlenav/ui/bG;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bG;->b:Lcom/google/googlenav/ui/aT;

    iget-object v1, p0, Lcom/google/googlenav/ui/bG;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/ui/aT;Ljava/lang/String;)Li/aQ;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bG;->a:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/bG;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Li/aQ;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/bG;->b:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->j(Lcom/google/googlenav/ui/aT;)Lf/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/Y;->b(Lf/a;)V

    return-void
.end method

.method public a(ZZZ)V
    .locals 0

    return-void
.end method
