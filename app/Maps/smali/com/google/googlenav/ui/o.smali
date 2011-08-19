.class Lcom/google/googlenav/ui/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bE;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/F;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/F;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/o;->a:Lcom/google/googlenav/ui/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/o;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/F;->c(Lcom/google/googlenav/ui/F;)LaU/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aE;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/aE;-><init>(Lcom/google/googlenav/ui/o;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/o;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/F;->a(Lcom/google/googlenav/ui/F;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/o;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/F;->c(Lcom/google/googlenav/ui/F;)LaU/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aF;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/googlenav/ui/aF;-><init>(Lcom/google/googlenav/ui/o;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
