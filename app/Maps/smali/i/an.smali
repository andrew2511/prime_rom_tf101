.class Li/an;
.super Ljava/lang/Object;

# interfaces
.implements Li/s;


# instance fields
.field final synthetic a:Lcom/google/googlenav/c;

.field final synthetic b:Li/bq;


# direct methods
.method constructor <init>(Li/bq;Lcom/google/googlenav/c;)V
    .locals 0

    iput-object p1, p0, Li/an;->b:Li/bq;

    iput-object p2, p0, Li/an;->a:Lcom/google/googlenav/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/bx;
    .locals 4

    iget-object v0, p0, Li/an;->b:Li/bq;

    invoke-static {v0}, Li/bq;->a(Li/bq;)Li/aw;

    move-result-object v0

    invoke-virtual {v0}, Li/aw;->bF()[Lcom/google/googlenav/c;

    move-result-object v0

    iget-object v1, p0, Li/an;->b:Li/bq;

    invoke-static {v1}, Li/bq;->a(Li/bq;)Li/aw;

    move-result-object v1

    iget-object v2, p0, Li/an;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1, v2}, Li/aw;->g(Lcom/google/googlenav/c;)I

    move-result v1

    if-eqz v0, :cond_0

    if-ltz v1, :cond_0

    array-length v2, v0

    if-lt v1, v2, :cond_1

    :cond_0
    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, v1

    const/16 v2, 0x2d3

    const/16 v3, 0x3e7

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Li/P;->a(Lcom/google/googlenav/c;IILjava/lang/String;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    goto :goto_0
.end method
