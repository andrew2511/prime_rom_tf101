.class Lh/cn;
.super Ljava/lang/Object;

# interfaces
.implements Lo/V;


# instance fields
.field final synthetic a:Law/e;

.field final synthetic b:Lh/ay;


# direct methods
.method constructor <init>(Lh/ay;Law/e;)V
    .locals 0

    iput-object p1, p0, Lh/cn;->b:Lh/ay;

    iput-object p2, p0, Lh/cn;->a:Law/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh/cn;->b:Lh/ay;

    iget-object v0, v0, Lh/ay;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/cn;->b:Lh/ay;

    invoke-static {v0}, Lh/ay;->a(Lh/ay;)Lh/aZ;

    move-result-object v0

    iget-object v1, p0, Lh/cn;->a:Law/e;

    invoke-interface {v0, v1}, Lh/aZ;->a(Law/e;)V

    iget-object v0, p0, Lh/cn;->b:Lh/ay;

    invoke-virtual {v0}, Lh/ay;->v()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lh/cn;->b:Lh/ay;

    iget-object v0, v0, Lh/ay;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/cn;->b:Lh/ay;

    iget-object v0, v0, Lh/ay;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x3c0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lh/cn;->b:Lh/ay;

    invoke-static {v0}, Lh/ay;->a(Lh/ay;)Lh/aZ;

    move-result-object v0

    invoke-interface {v0}, Lh/aZ;->a()V

    iget-object v0, p0, Lh/cn;->b:Lh/ay;

    invoke-virtual {v0}, Lh/ay;->v()V

    return-void
.end method
