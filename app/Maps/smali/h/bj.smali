.class Lh/bj;
.super Ljava/lang/Object;

# interfaces
.implements Lh/fM;


# instance fields
.field final synthetic a:Lcom/google/googlenav/h;

.field final synthetic b:Lh/eZ;


# direct methods
.method constructor <init>(Lh/eZ;Lcom/google/googlenav/h;)V
    .locals 0

    iput-object p1, p0, Lh/bj;->b:Lh/eZ;

    iput-object p2, p0, Lh/bj;->a:Lcom/google/googlenav/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lh/bj;->b:Lh/eZ;

    iget-object v0, v0, Lh/eZ;->a:Lh/dn;

    iget-object v1, p0, Lh/bj;->a:Lcom/google/googlenav/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lh/dn;->a(Lcom/google/googlenav/h;Z)V

    iget-object v0, p0, Lh/bj;->b:Lh/eZ;

    iget-object v0, v0, Lh/eZ;->a:Lh/dn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/dn;->a(Ljava/util/List;)V

    iget-object v0, p0, Lh/bj;->b:Lh/eZ;

    iget-object v0, v0, Lh/eZ;->a:Lh/dn;

    invoke-static {v0}, Lh/dn;->b(Lh/dn;)Lh/aB;

    move-result-object v0

    invoke-virtual {v0}, Lh/aB;->a()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lh/bj;->b:Lh/eZ;

    iget-object v0, v0, Lh/eZ;->a:Lh/dn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/dn;->a(Ljava/lang/String;)V

    return-void
.end method
