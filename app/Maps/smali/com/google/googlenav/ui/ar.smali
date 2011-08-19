.class Lcom/google/googlenav/ui/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lf/a;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/bu;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/bu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/ar;->a:Lcom/google/googlenav/ui/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/ar;->a:Lcom/google/googlenav/ui/bu;

    invoke-static {v0}, Lcom/google/googlenav/ui/bu;->a(Lcom/google/googlenav/ui/bu;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/ar;->a:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->v()V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/ar;->a:Lcom/google/googlenav/ui/bu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bu;->a(Lcom/google/googlenav/ui/bu;Z)Z

    return-void
.end method
