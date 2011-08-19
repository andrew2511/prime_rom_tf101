.class Lh/aE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lh/cl;


# direct methods
.method constructor <init>(Lh/cl;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lh/aE;->b:Lh/cl;

    iput-object p2, p0, Lh/aE;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lh/aE;->b:Lh/cl;

    iget-object v0, v0, Lh/cl;->a:Lh/ay;

    iget-object v0, v0, Lh/ay;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/aE;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/aE;->b:Lh/cl;

    iget-object v0, v0, Lh/cl;->a:Lh/ay;

    iget-object v0, v0, Lh/ay;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x79

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/aE;->b:Lh/cl;

    iget-object v0, v0, Lh/cl;->a:Lh/ay;

    iget-object v1, p0, Lh/aE;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lh/ay;->a(Lh/ay;Ljava/util/List;)V

    goto :goto_0
.end method
