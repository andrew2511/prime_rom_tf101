.class Lh/em;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eJ;


# instance fields
.field final synthetic a:Lh/cX;


# direct methods
.method constructor <init>(Lh/cX;)V
    .locals 0

    iput-object p1, p0, Lh/em;->a:Lh/cX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lh/em;->a:Lh/cX;

    iget-object v0, v0, Lh/cX;->a:Lh/bb;

    iget-object v0, v0, Lh/bb;->c:Lh/dn;

    iget-object v1, p0, Lh/em;->a:Lh/cX;

    iget-object v1, v1, Lh/cX;->a:Lh/bb;

    iget-object v1, v1, Lh/bb;->a:Lcom/google/googlenav/bG;

    iget-object v2, p0, Lh/em;->a:Lh/cX;

    iget-object v2, v2, Lh/cX;->a:Lh/bb;

    iget-object v2, v2, Lh/bb;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lh/dn;->a(Lh/dn;Lcom/google/googlenav/bG;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method
