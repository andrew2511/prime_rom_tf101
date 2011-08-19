.class public Lcom/google/googlenav/ui/ax;
.super Lx/W;


# instance fields
.field private a:Lcom/google/googlenav/ui/aY;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aY;)V
    .locals 0

    invoke-direct {p0}, Lx/W;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/ax;->a:Lcom/google/googlenav/ui/aY;

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 4

    instance-of v0, p1, Lx/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lx/q;

    iget-object v0, p0, Lcom/google/googlenav/ui/ax;->a:Lcom/google/googlenav/ui/aY;

    invoke-virtual {p1}, Lx/q;->a()I

    move-result v1

    invoke-virtual {p1}, Lx/q;->b()I

    move-result v2

    invoke-virtual {p1}, Lx/q;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/aY;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
