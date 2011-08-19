.class Lcom/google/googlenav/ui/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aY;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/F;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/F;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/m;->a:Lcom/google/googlenav/ui/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/m;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/F;->g(Lcom/google/googlenav/ui/F;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/m;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/F;->f(Lcom/google/googlenav/ui/F;)Lcom/google/googlenav/ui/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/A;->b()V

    return-void
.end method
