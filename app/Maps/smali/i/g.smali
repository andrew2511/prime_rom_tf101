.class Li/g;
.super Ljava/lang/Object;

# interfaces
.implements Li/ai;


# instance fields
.field final synthetic a:Li/aQ;


# direct methods
.method constructor <init>(Li/aQ;)V
    .locals 0

    iput-object p1, p0, Li/g;->a:Li/aQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/x;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Li/g;->a:Li/aQ;

    iget-object v0, v0, Li/aQ;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Li/g;->a:Li/aQ;

    invoke-static {v0}, Li/aQ;->a(Li/aQ;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/g;->a:Li/aQ;

    iget-object v1, p0, Li/g;->a:Li/aQ;

    invoke-static {v1}, Li/aQ;->a(Li/aQ;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Li/aQ;->a(Li/aQ;Ljava/lang/String;)V

    iget-object v0, p0, Li/g;->a:Li/aQ;

    invoke-static {v0, v2}, Li/aQ;->b(Li/aQ;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Li/g;->a:Li/aQ;

    invoke-virtual {v0}, Li/aQ;->q()Lcom/google/googlenav/aY;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/aY;->a(Li/ai;)V

    :cond_0
    return-void
.end method
