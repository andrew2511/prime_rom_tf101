.class Lh/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eJ;


# instance fields
.field final synthetic a:Lh/eZ;


# direct methods
.method constructor <init>(Lh/eZ;)V
    .locals 0

    iput-object p1, p0, Lh/bm;->a:Lh/eZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    iget-object v0, p0, Lh/bm;->a:Lh/eZ;

    iget-object v0, v0, Lh/eZ;->a:Lh/dn;

    const/4 v1, 0x1

    new-array v1, v1, [Lo/d;

    const/4 v2, 0x0

    invoke-static {}, Lo/d;->h()Lo/d;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lj/X;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/dn;->a(Ljava/util/List;)V

    iget-object v0, p0, Lh/bm;->a:Lh/eZ;

    invoke-static {v0}, Lh/eZ;->b(Lh/eZ;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lh/bm;->a:Lh/eZ;

    iget-object v0, v0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/fJ;->a(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lh/bm;->a:Lh/eZ;

    iget-object v0, v0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->f(Lh/dn;)Lh/fJ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/fJ;->a(Z)V

    return-void
.end method
