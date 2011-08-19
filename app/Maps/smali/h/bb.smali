.class Lh/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/a;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bG;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lh/dn;


# direct methods
.method constructor <init>(Lh/dn;Lcom/google/googlenav/bG;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh/bb;->c:Lh/dn;

    iput-object p2, p0, Lh/bb;->a:Lcom/google/googlenav/bG;

    iput-object p3, p0, Lh/bb;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/z;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/z;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/googlenav/z;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    const-string v1, "a"

    const-string v2, "z"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lh/bb;->c:Lh/dn;

    invoke-static {v0}, Lh/dn;->a(Lh/dn;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->v()LaU/a;

    move-result-object v0

    new-instance v1, Lh/cX;

    invoke-direct {v1, p0}, Lh/cX;-><init>(Lh/bb;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/google/googlenav/z;)V
    .locals 0

    return-void
.end method
