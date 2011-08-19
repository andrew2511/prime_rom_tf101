.class Lh/cl;
.super Ljava/lang/Object;

# interfaces
.implements Lba/c;


# instance fields
.field final synthetic a:Lh/ay;


# direct methods
.method constructor <init>(Lh/ay;)V
    .locals 0

    iput-object p1, p0, Lh/cl;->a:Lh/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh/cl;->a:Lh/ay;

    iget-object v0, v0, Lh/ay;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/cl;->a:Lh/ay;

    iget-object v0, v0, Lh/ay;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->v()LaU/a;

    move-result-object v0

    new-instance v1, Lh/aF;

    invoke-direct {v1, p0}, Lh/aF;-><init>(Lh/cl;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lh/cl;->a:Lh/ay;

    iget-object v0, v0, Lh/ay;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->v()LaU/a;

    move-result-object v0

    new-instance v1, Lh/aE;

    invoke-direct {v1, p0, p1}, Lh/aE;-><init>(Lh/cl;Ljava/util/List;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
