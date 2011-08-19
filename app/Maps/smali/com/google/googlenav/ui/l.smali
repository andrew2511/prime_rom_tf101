.class Lcom/google/googlenav/ui/l;
.super Ljava/lang/Object;

# interfaces
.implements Lx/U;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/F;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/F;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/l;->a:Lcom/google/googlenav/ui/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 4

    const/4 v3, 0x0

    instance-of v1, p1, Lx/a;

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lx/a;

    move-object v1, v0

    iget-object v1, v1, Lx/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "oauth_verifier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/ui/l;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v1}, Lcom/google/googlenav/ui/F;->c(Lcom/google/googlenav/ui/F;)LaU/a;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/E;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/E;-><init>(Lcom/google/googlenav/ui/l;Lx/Q;)V

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public b(Lx/Q;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
