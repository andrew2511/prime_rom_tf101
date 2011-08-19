.class Li/aS;
.super Ljava/lang/Object;

# interfaces
.implements Li/s;


# instance fields
.field final synthetic a:Li/at;


# direct methods
.method constructor <init>(Li/at;)V
    .locals 0

    iput-object p1, p0, Li/aS;->a:Li/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/bx;
    .locals 3

    iget-object v0, p0, Li/aS;->a:Li/at;

    invoke-static {v0}, Li/at;->a(Li/at;)Li/v;

    move-result-object v0

    invoke-virtual {v0}, Li/v;->B()LaO/b;

    move-result-object v0

    invoke-virtual {v0}, LaO/b;->m()[Lcom/google/googlenav/c;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Li/aS;->a:Li/at;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Li/at;->a(Li/at;Lcom/google/googlenav/c;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    goto :goto_0
.end method
