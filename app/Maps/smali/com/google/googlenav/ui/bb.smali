.class Lcom/google/googlenav/ui/bb;
.super Lx/W;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aP;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aP;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bb;->a:Lcom/google/googlenav/ui/aP;

    invoke-direct {p0}, Lx/W;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlenav/ui/bb;->a:Lcom/google/googlenav/ui/aP;

    invoke-static {v1}, Lcom/google/googlenav/ui/aP;->a(Lcom/google/googlenav/ui/aP;)Lcom/google/googlenav/ui/aT;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->a(I)V

    const/4 v0, 0x1

    return v0
.end method
