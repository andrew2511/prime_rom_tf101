.class Lh/cj;
.super Ljava/lang/Object;

# interfaces
.implements Lh/fM;


# instance fields
.field final synthetic a:Lcom/google/googlenav/h;

.field final synthetic b:Lh/cc;


# direct methods
.method constructor <init>(Lh/cc;Lcom/google/googlenav/h;)V
    .locals 0

    iput-object p1, p0, Lh/cj;->b:Lh/cc;

    iput-object p2, p0, Lh/cj;->a:Lcom/google/googlenav/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh/cj;->b:Lh/cc;

    iget-object v0, v0, Lh/cc;->a:Lh/dN;

    iget-object v1, p0, Lh/cj;->a:Lcom/google/googlenav/h;

    invoke-virtual {v0, v1}, Lh/dN;->a(Lcom/google/googlenav/h;)V

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lh/cj;->b:Lh/cc;

    iget-object v0, v0, Lh/cc;->a:Lh/dN;

    const/16 v1, 0x19b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lh/dN;->a(IILjava/lang/Object;)Z

    return-void
.end method
