.class Lh/bn;
.super Ljava/lang/Object;

# interfaces
.implements Lh/i;


# instance fields
.field final synthetic a:Lh/eZ;


# direct methods
.method constructor <init>(Lh/eZ;)V
    .locals 0

    iput-object p1, p0, Lh/bn;->a:Lh/eZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/h;)V
    .locals 2

    iget-object v0, p0, Lh/bn;->a:Lh/eZ;

    iget-object v0, v0, Lh/eZ;->a:Lh/dn;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lh/dn;->a(Lcom/google/googlenav/h;Z)V

    iget-object v0, p0, Lh/bn;->a:Lh/eZ;

    iget-object v0, v0, Lh/eZ;->a:Lh/dn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/dn;->a(Ljava/util/List;)V

    iget-object v0, p0, Lh/bn;->a:Lh/eZ;

    iget-object v0, v0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->b(Lh/dn;)Lh/aB;

    move-result-object v0

    invoke-virtual {v0}, Lh/aB;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lh/bn;->a:Lh/eZ;

    iget-object v0, v0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->j(Lh/dn;)Lh/dV;

    move-result-object v0

    invoke-interface {v0}, Lh/dV;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lh/bn;->a:Lh/eZ;

    iget-object v0, v0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->j(Lh/dn;)Lh/dV;

    move-result-object v0

    invoke-interface {v0}, Lh/dV;->c()V

    return-void
.end method
