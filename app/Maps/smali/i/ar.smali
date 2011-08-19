.class Li/ar;
.super Ljava/lang/Object;

# interfaces
.implements Li/o;


# instance fields
.field final synthetic a:Lcom/google/googlenav/z;

.field final synthetic b:Li/C;


# direct methods
.method constructor <init>(Li/C;Lcom/google/googlenav/z;)V
    .locals 0

    iput-object p1, p0, Li/ar;->b:Li/C;

    iput-object p2, p0, Li/ar;->a:Lcom/google/googlenav/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/j;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Li/ar;->a:Lcom/google/googlenav/z;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Li/ar;->b:Li/C;

    const/4 v1, 0x0

    check-cast p1, Lcom/google/googlenav/z;

    invoke-virtual {v0, v1, p1}, Li/C;->a(ZLcom/google/googlenav/z;)V

    :cond_0
    iget-object v0, p0, Li/ar;->b:Li/C;

    invoke-static {v0}, Li/C;->b(Li/C;)Lo/by;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lo/by;->a(Lcom/google/googlenav/a;J)V

    return-void
.end method
