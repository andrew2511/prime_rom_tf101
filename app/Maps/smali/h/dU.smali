.class Lh/dU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/j;

.field final synthetic b:Lh/fU;


# direct methods
.method constructor <init>(Lh/fU;Lcom/google/googlenav/j;)V
    .locals 0

    iput-object p1, p0, Lh/dU;->b:Lh/fU;

    iput-object p2, p0, Lh/dU;->a:Lcom/google/googlenav/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lh/dU;->b:Lh/fU;

    iget-object v0, v0, Lh/fU;->a:Lh/dN;

    new-instance v1, Lo/aH;

    iget-object v2, p0, Lh/dU;->a:Lcom/google/googlenav/j;

    invoke-direct {v1, v2}, Lo/aH;-><init>(Lcom/google/googlenav/j;)V

    invoke-static {v0, v1}, Lh/dN;->a(Lh/dN;Lo/aH;)Lo/aH;

    iget-object v0, p0, Lh/dU;->b:Lh/fU;

    iget-object v0, v0, Lh/fU;->a:Lh/dN;

    invoke-virtual {v0}, Lh/dN;->h()V

    return-void
.end method
