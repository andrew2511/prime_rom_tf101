.class Li/aI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Li/Q;


# direct methods
.method constructor <init>(Li/Q;)V
    .locals 0

    iput-object p1, p0, Li/aI;->a:Li/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Li/aI;->a:Li/Q;

    iget-object v0, v0, Li/Q;->a:Lcom/google/googlenav/z;

    iget-object v1, p0, Li/aI;->a:Li/Q;

    iget-object v1, v1, Li/Q;->c:Li/aw;

    invoke-static {v1}, Li/aw;->a(Li/aw;)LaO/b;

    move-result-object v1

    invoke-virtual {v1}, LaO/b;->l()[Lcom/google/googlenav/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/z;->a([Lcom/google/googlenav/c;)V

    const/4 v0, 0x1

    iget-object v1, p0, Li/aI;->a:Li/Q;

    iget-object v1, v1, Li/Q;->c:Li/aw;

    iget-object v2, p0, Li/aI;->a:Li/Q;

    iget-object v2, v2, Li/Q;->a:Lcom/google/googlenav/z;

    iget-object v3, p0, Li/aI;->a:Li/Q;

    iget-boolean v3, v3, Li/Q;->b:Z

    invoke-static {v1, v2, v3, v0}, Li/aw;->a(Li/aw;Lcom/google/googlenav/z;ZZ)V

    iget-object v0, p0, Li/aI;->a:Li/Q;

    iget-object v0, v0, Li/Q;->c:Li/aw;

    invoke-virtual {v0}, Li/aw;->aA()V

    iget-object v0, p0, Li/aI;->a:Li/Q;

    iget-object v0, v0, Li/Q;->c:Li/aw;

    invoke-virtual {v0}, Li/aw;->Y()V

    return-void
.end method
