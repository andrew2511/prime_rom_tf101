.class Lh/cQ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aj;


# instance fields
.field final synthetic a:Lo/U;

.field final synthetic b:Lcom/google/googlenav/j;

.field final synthetic c:Lcom/google/googlenav/bG;

.field final synthetic d:Lh/bH;


# direct methods
.method constructor <init>(Lh/bH;Lo/U;Lcom/google/googlenav/j;Lcom/google/googlenav/bG;)V
    .locals 0

    iput-object p1, p0, Lh/cQ;->d:Lh/bH;

    iput-object p2, p0, Lh/cQ;->a:Lo/U;

    iput-object p3, p0, Lh/cQ;->b:Lcom/google/googlenav/j;

    iput-object p4, p0, Lh/cQ;->c:Lcom/google/googlenav/bG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    if-nez p1, :cond_1

    iget-object v0, p0, Lh/cQ;->d:Lh/bH;

    iget-object v0, v0, Lh/bH;->b:Lh/dh;

    iget-object v1, p0, Lh/cQ;->d:Lh/bH;

    iget-object v1, v1, Lh/bH;->a:Lh/H;

    invoke-static {v0, v1}, Lh/dh;->a(Lh/dh;Lh/H;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lh/cQ;->a:Lo/U;

    invoke-virtual {v0}, Lo/U;->F()[Lcom/google/googlenav/bG;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lh/cQ;->d:Lh/bH;

    iget-object v0, v0, Lh/bH;->b:Lh/dh;

    invoke-static {v0}, Lh/dh;->b(Lh/dh;)Li/br;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lh/cQ;->b:Lcom/google/googlenav/j;

    const/4 v3, 0x0

    new-instance v4, Lh/dg;

    invoke-direct {v4, p0}, Lh/dg;-><init>(Lh/cQ;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Li/br;->a(ILcom/google/googlenav/j;LaU/a;Li/aD;)V

    goto :goto_0
.end method
