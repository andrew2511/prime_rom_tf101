.class final Lo/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/a;


# instance fields
.field final synthetic a:Lcom/google/googlenav/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/a;)V
    .locals 0

    iput-object p1, p0, Lo/ax;->a:Lcom/google/googlenav/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/z;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/z;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lo/by;->a(Z)V

    iget-object v0, p0, Lo/ax;->a:Lcom/google/googlenav/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ax;->a:Lcom/google/googlenav/a;

    invoke-interface {v0, p1, p2}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/z;Z)V

    :cond_0
    return-void
.end method

.method public b(Lcom/google/googlenav/z;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lo/by;->a(Z)V

    iget-object v0, p0, Lo/ax;->a:Lcom/google/googlenav/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ax;->a:Lcom/google/googlenav/a;

    invoke-interface {v0, p1}, Lcom/google/googlenav/a;->b(Lcom/google/googlenav/z;)V

    :cond_0
    return-void
.end method
